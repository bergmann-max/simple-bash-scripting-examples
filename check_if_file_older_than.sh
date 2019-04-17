#!/usr/bin/env bash

FILENAME="<insert filename>"

if [[ -n $(find "${FILENAME}" -mtime +100 -print) ]]; then
  echo "File ${FILENAME} exists and is older than 100 days"
fi
