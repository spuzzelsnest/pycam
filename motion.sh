#!/bin/bash

user=$(whoami)
dump='/home/'$user'/Pictures/homeSec'
zips='/home/'$user'/Pictures/sendFiles'
date=$(date +"%Y-%m-%d_%H%M")
<<<<<<< HEAD:motion.sh
echo 'what email you want to send it too?'
email=j.mpdesmet@gmail.com
=======
echo 'what email you want to send it to?'
read email
>>>>>>> 9046e9d693f13de61e383d81ae332d7f116f5eaa:homeSec.sh
mkdir -p $dump
mkdir -p $zips

sleep 2m

echo '-------------------------------------'
echo '|Zipping files and removing orf File|'
echo '-------------------------------------'
cd $dump
zip -r $zips/homeSec_$date.zip *
rm $dump/*

echo '--------------------------------------------------------'
echo '|sending' $zips/homeSec_$date.zip to $email
echo '---------------------------------------------------------'

echo "neuze neuze" | mail -s "Motion Detected" $email -A $zips/homeSec_$date.zip
