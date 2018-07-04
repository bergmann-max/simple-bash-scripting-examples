#!/bin/bash

read -n1 -p -r "Do that? [y,n] " doit
case $doit in
  y|Y) echo yes ;;
  n|N) echo no ;;
  *) echo dont know ;;
esac


echo "Do that? [Y,n] "
read -r input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "do that"
else
        echo "don't do that"
fi
