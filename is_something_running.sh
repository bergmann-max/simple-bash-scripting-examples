#!/usr/bin/env bash

# This script checks if the example_script.sh script is running.

PROCESS="example_script.sh"

RESULT=$(pgrep --ignore-case "$PROCESS" | grep --count --invert-match "grep" )
if [ "$RESULT" -eq 0 ] ; then

        echo "${PROCESS} is not running"

else

        echo "${PROCESS} is running"

fi
