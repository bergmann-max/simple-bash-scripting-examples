#!/usr/bin/env bash
#Renaming JPEG in a directory to sequential numbers

DIRECTORY="/path/to/dir/"
lenght="5" #Length of the new file name (e.g. 5 starts with 00001)

for pictures in ${DIRECTORY}
do

	new=$(printf "${DIRECTORY}%0${lenght}d.jpg" "$counter")
        mv "$pictures" "$new"
        counter=$((counter + 1))

done
