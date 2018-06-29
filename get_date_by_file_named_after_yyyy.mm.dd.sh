#!/bin/bash

#get date by a mp4 file named after [yyy][mm] %Y%m.mp4


DIRECTORY="/path/to/dir"
MOVIES=$( ls ${DIRECTORY} | grep .mp4 | wc -l )
MOVIENUMBER=${MOVIES}
COUNTER=0


while [  ${COUNTER} -lt ${MOVIES} ]; do

		VIDEONAME=$(ls -t ${inputdir0} | tail -n ${MOVIENUMBER} | head -n 1)	#List all files invert
		VIDEOSTRING="${VIDEONAME%.*}"	#cut file name at "."

		VIDEODATE=$(basename ${VIDEOSTRING} ) #cut the path to the file

		MYDATE=$(date -d ${VIDEODATE}01 +'%Y%m%d') #Put "01" to the string to detect date in the next step

		MONTHNAME=$(date -d ${MYDATE} +%B) #Get the date from a string

		echo ${MONTHNAME}

	MOVIENUMBER=$((MOVIENUMBER - 1))
	COUNTER=$((COUNTER + 1))

done
