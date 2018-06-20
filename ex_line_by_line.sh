#!/usr/bin/env bash

echo "Press CTRL+C to proceed."
trap "pkill -f 'sleep 1h'" INT
trap "set +x ; sleep 1h ; set -x" DEBUG

< YOUR CODE HERE >
