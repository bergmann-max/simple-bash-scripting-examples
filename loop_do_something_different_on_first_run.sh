#!/usr/bin/env bash

#This loop do something different on the first run

 counter=1

for file in /path/to/files/*; do
    echo -e "$( if [ "${counter}" -eq "1" ]; then echo "First run: "; fi )${file}"

counter=$((counter +1))

done
