#!/usr/bin/env bash

#MP4 and JPEG files older than 10 days in a directory get deleted

DIRECTROY"/path/to/dir"
FILE0=".mp4"
FILE1=".jpg"
DEL_TIME="9"
find $"{DIRECTROY}" -type f \( -iname \*${FILE0}\* -o -iname \*${FILE1}\* \) -mtime +${DEL_TIME} -exec rm -f {} +
