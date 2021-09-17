#!/bin/bash

#Initiated from a remote process, attempts to replace the remote processes directory contents, wait for remote
#process to self exit and restart remote processes host
#FileSignature EwDXmTOVCzhvkCWaJEDMN2VjNzbJEjOdCF1FpFWbEdEJlxa2FypjJ1abRHyWO2t1FxuXpxyVGdyvZdLnFBDOAG==

controller_dir="$1"
newfile_dir="$2"
controller_pid="$3"

#controller_dir="/home/kali/Desktop/Script/controllerdir/"
#newfile_dir="/home/kali/Desktop/Script/newfiledir/"


#log_file="piscript-$(date +%Y%m%d)"

echo "Doing some stuff and some things" | tee -a $log_file

tail --pid=$controller_pid -f /dev/null

echo "Closed controller process on client"

rm -rfv $controller_dir*
rmdir $controller_dir

echo "Removed old controller directory"

mkdir -p $controller_dir

echo "Created new controller directory"

cp -a $newfile_dir* $controller_dir

echo "Copied newfile directory contents into original controller dir"
echo "Done"





