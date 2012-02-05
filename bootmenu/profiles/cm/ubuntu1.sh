#!/bin/sh
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export LD_LIBRARY_PATH=/usr/lib:/usr/local/lib

logger -i "ubuntu1.sh: begin"

logger -i "ubuntu1.sh: rm's"

# make sure no left-over pidfiles
#################################
rm -fr /var/run/*
rm -fr /var/lock/*

logger -i "ubuntu1.sh: ch*'s"

chown root.adas /var/tmp
chown root.adas /var/lock
chmod 775 /var/tmp
chmod 775 /var/lock

mkdir -p /home/adas/Desktop
chmod 755 /home/adas/Desktop
chown -R adas.adas /home/adas/Desktop
chmod 666 /dev/socket/dbus
chmod 666 /dev/null

logger -i "ubuntu1.sh: firefox profile"

HOME=/home/adas
if [ ! -d $HOME ]
then
    logger "ubuntu1.sh: Home directory missing"
    exit
elif [ `stat -c %T -f $HOME` = "tmpfs" ]
then
    logger "ubuntu1.sh: Dbus file cannot be started on tmpfs, webtop not starting"
    exit
fi

if ps aux | grep /usr/bin/X | grep -v grep > /dev/null
then
    logger "ubuntu1.sh: previous X session running, exit"
    exit
fi

[ -x /usr/bin/firefox-install-profile ] && /usr/bin/firefox-install-profile
os_ret=$?
if [ $os_ret -ne 0 ]
then
        logger -i "ubuntu1.sh: firefox profile failed [$os_ret]"
fi

if [ ! -f /etc/oshwt-ProductBuild ]
then
	if [ ! -d /var/log/Rotate ]
	then
		mkdir /var/log/Rotate
		chmod 775 /var/log/Rotate
		chown root.adas /var/log/Rotate
	fi

	logger -i "ubuntu1.sh: sysklogd"
        /etc/init.d/sysklogd start

	logger -i "rc.local: log rotate"
	sfalv -i wt_logrotate
fi

logger -i "ubuntu1.sh: dbus"
/etc/init.d/dbus start
os_ret=$?
if [ $os_ret -ne 0 ]
then
        logger -i "ubuntu1.sh: dbus failed [$os_ret]"
fi

logger -i "ubuntu1.sh: udev"
/etc/init.d/udev start
os_ret=$?
if [ $os_ret -ne 0 ]
then
        logger -i "ubuntu1.sh: udev failed [$os_ret]"
fi

logger -i "ubuntu1.sh: card"

# Rob:  fix permissions on card1..
mknod /dev/dri/card1 c 266 1
chmod 666 /dev/dri/card1

logger -i "ubuntu1.sh: tomoyo"

/etc/init.d/mountsecurityfs.sh
os_ret=$?
if [ $os_ret -ne 0 ]
then
        logger -i "ubuntu1.sh: tomoyo failed [$os_ret]"
fi

[ -d /tmp/webtop_restart.lock.d/ ] && rm -rf /tmp/webtop_restart.lock.d/

logger -i "ubuntu1.sh: X"
/etc/init.d/startXServer.sh &
os_ret=$?
if [ $os_ret -ne 0 ]
then
        logger -i "ubuntu1.sh: X failed [$os_ret]"
fi

logger -i "ubuntu1.sh: hald"
/usr/sbin/hald
os_ret=$?
if [ $os_ret -ne 0 ]
then
        logger -i "ubuntu1.sh: hald failed [$os_ret]"
fi

logger -i "ubuntu1.sh: /etc/rc.local"
/etc/rc.local
os_ret=$?
if [ $os_ret -ne 0 ]
then
        logger -i "ubuntu1.sh: rc.local failed [$os_ret]"
fi

logger -i "[`date`] ubuntu1.sh: end"

