#!/bin/bash

for i in `ls`
do
	echo "=============" >> file.txt
	echo \$\(module_device\)\/modules\/$i\:system\/lib\/modules\/$i\ \\ >> file.txt
done
