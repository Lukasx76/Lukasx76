#!/usr/bin/bash

start=`ls -1v lucasGomes* | grep [0-9]$ | tail -1 | tr -d lucasGomes`

if [ -z $start ]
then
        start=1
fi

range=start+25

for (( c=start; c<range; c++ ))
do
        touch "lucasGomes$c"
done

#adjusting the code
