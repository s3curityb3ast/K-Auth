#!/bin/bash

#This scritpt will install the Kauth program in system

echo "Checking for prerequisit installed"

if test "`aptitude search festival | head -n 1 |   awk -F " " '{print $1}'`" = "i"; then 
echo "Okay"
else sudo aptitude install festival  -y 
fi
if test "`aptitude search fswebcam | head -n 1 |   awk -F " " '{print $1}'`" = "i"; then 
echo "Okay"
else sudo aptitude install festival  -y 
fi
sudo mkdir -p /usr/lib/KAuth
sudo mkdir -p /usr/lib/KAuth/lib
sudo chown `whoami`. /usr/lib/KAuth
echo "Taking backup of origanal files to /opt"
sudo cp -R /etc/pam.d/ /opt/pam.d
echo "making lib"
sudo cp -R lib/* /usr/lib/KAuth/lib
echo "making bin"
sudo cp -R bin/* /usr/bin/
echo "making changes in you PAM system"
sudo cp -R pam/* /etc/pam.d/



