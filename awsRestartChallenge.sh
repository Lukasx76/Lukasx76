#!/usr/bin/bash

#Extracting the greatest number of the files considering that the current directory is /home/lucas
var=`ls -1v lucasGomes* | tail -1 | tr -d -c 0-9`

#The number extracted is stored into a variable and it will be considered the starting number or the least number of the loop
leastNumber=$var

#I want to generate 25 files starting from leastNumber so the least number will be added 25 turning into the ending number or Greatest number of the loop
greatestNumber=$var+25

#also, I want to check that the current directory is /home/lucas 
CURRENT_DIRECTORY=pwd
DIRECTORY_TO_RUN='/home/lucas'

if [ `$CURRENT_DIRECTORY`==`$DIRECTORY_TO_RUN` ]
then
        i=$leastNumber
        while [[ $i -le $greatestNumber ]]
        do
                touch lucasGomes$i
                ((i = i + 1))
        done
else
        echo "You need to be on /home/lucas directory to run this script"
fi