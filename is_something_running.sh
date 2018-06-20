#!/bin/bash

# This script checks if the example_script.sh script is running. If not it'll start it.

# Change the directory of this script
BASEDIR=$(dirname "$0")
cd "${BASEDIR}" || exit

RESULT=$(ps aux | grep --ignore-case "example_script.sh" | grep --invert-match "grep" | wc --lines)
if [ "$RESULT" -eq 0 ] ; then

  ./example_script.sh

fi
