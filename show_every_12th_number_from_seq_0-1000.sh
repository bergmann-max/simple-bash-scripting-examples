#!/usr/bin/env bash

#show every 12th number from 0-1000

index=0
for x in $(seq 1 1000)
do
    if ! ((index % 12)); then
        echo "$index divisible by 12."
    fi
    index=$((index + 1))
done
