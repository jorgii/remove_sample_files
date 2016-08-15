#!/bin/bash

files=()
while IFS=  read -r -d $'\0'; do
    files+=("$REPLY")
done < <(find /media/Plex -regex ".*[Ss]ample.*" -print0)

for i in "${files[@]}";
do
    if [ -e "$i" ]
        then
            rm -r "$i"
            echo Deleted "$i"
    fi
done

