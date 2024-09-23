#!/bin/bash
#Event-driven programming
echo "**************************************************************"
echo COPY SVN AADUHALDE version "09.23"
echo "**************************************************************"
#/opt/automata
#creating string name folder
echo "Bash version ${BASH_VERSION}"
time_start=$(date +"%T")
echo "TIME: $time_start Starting..."
datebk=$(date +%m%d%y)
#montar la unidad en /dev/sda1 of /media/alex/GIGABYTE
sudo umount /media/alex/BACKUP_UNIT
sudo mount /dev/sda1 /media/alex/BACKUP_UNIT

for namedir in $datebk
do
    if [ -d /media/alex/BACKUP_UNIT/$datebk ]
    then
    echo "The folder is exist  = $namedir"
        else
            echo "Creating folder whit name = $namedir"
            sudo  mkdir /media/alex/BACKUP_UNIT/$namedir
            sudo cp -R -v /var/www/html /media/alex/BACKUP_UNIT/$namedir/apache2
            sudo cp -R -v /home/alex/Documents /media/alex/BACKUP_UNIT/$namedir
            fi

done
#verification folder
cont=0
for i in /media/alex/BACKUP_UNIT/*
do
    ((cont++))
    echo "file $cont is $i"

done

SIZE_O=$(du -hs /home/alex/Documents)
SIZE_D=$(du -hs /media/alex/BACKUP_UNIT/$namedir)
str1="$SIZE_O"
str2=${str1:0:4}
echo "$str2 ORIGIN"
str3="$SIZE_D"
str4=${str3:0:4}
echo "$str4 DESTINATION"
#log storage in paht folder, print tree path and data info storage
#Umount disk
sudo umount /media/alex/BACKUP_UNIT
time_end=$(date +"%T")
echo "TIME: $time_end Finished"


# INSERT DATABASE TELEMETRY
 
#namedir
#time_start
#time_end
#SIZE_O
#SIZE_D

