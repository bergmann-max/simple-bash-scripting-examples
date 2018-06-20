#!/bin/bash
#compare directories, named by date ([yyyy][mm][dd]), with the 1. of this month, then do something

DIRECTORY="/path/to/directory"

THISMONTH="$(date +%Y%m)01"

for FILE in ${DIRECTORY}/*
    do

        DIRECTORY_NAME_WITHOUT_PATH=$( basename "${FILE}" )

            if (("$DIRECTORY_NAME_WITHOUT_PATH" < "$THISMONTH" )); then

            echo "${DIRECTORY_NAME_WITHOUT_PATH}: I'm not from this month"

            fi

done
