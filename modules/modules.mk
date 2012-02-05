# Required tools and blobs for copy modules
module_device = device/motorola/spyder


PRODUCT_COPY_FILES += \
		$(module_device)/modules/act_gact.ko:system/lib/modules/act_gact.ko \
		$(module_device)/modules/act_mirred.ko:system/lib/modules/act_mirred.ko \
		$(module_device)/modules/act_police.ko:system/lib/modules/act_police.ko \
		$(module_device)/modules/aev.ko:system/lib/modules/aev.ko \
		$(module_device)/modules/btwilink.ko:system/lib/modules/btwilink.ko \
		$(module_device)/modules/caif_hsi.ko:system/lib/modules/caif_hsi.ko \
		$(module_device)/modules/caif_serial.ko:system/lib/modules/caif_serial.ko \
		$(module_device)/modules/cls_u32.ko:system/lib/modules/cls_u32.ko \
		$(module_device)/modules/dummy.ko:system/lib/modules/dummy.ko \
		$(module_device)/modules/em_u32.ko:system/lib/modules/em_u32.ko \
		$(module_device)/modules/evfwd.ko:system/lib/modules/evfwd.ko \
		$(module_device)/modules/fm_drv.ko:system/lib/modules/fm_drv.ko \
		$(module_device)/modules/gfx_vout_mod.ko:system/lib/modules/gfx_vout_mod.ko \
		$(module_device)/modules/gps_drv.ko:system/lib/modules/gps_drv.ko \
		$(module_device)/modules/hsi_char.ko:system/lib/modules/hsi_char.ko \
		$(module_device)/modules/hsi_omap.ko:system/lib/modules/hsi_omap.ko \
		$(module_device)/modules/kineto_gan.ko:system/lib/modules/kineto_gan.ko \
		$(module_device)/modules/omap-hdcp.ko:system/lib/modules/omap-hdcp.ko \
		$(module_device)/modules/pcbc.ko:system/lib/modules/pcbc.ko \
		$(module_device)/modules/sch_htb.ko:system/lib/modules/sch_htb.ko \
		$(module_device)/modules/sch_ingress.ko:system/lib/modules/sch_ingress.ko \
		$(module_device)/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
		$(module_device)/modules/tiap_drv.ko:system/lib/modules/tiap_drv.ko \
		$(module_device)/modules/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \
		$(module_device)/modules/vpnclient.ko:system/lib/modules/vpnclient.ko 
