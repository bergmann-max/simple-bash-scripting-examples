#!/usr/bin/env bash


PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            CHOICE='1' && break
            ;;
        "Option 2")
            CHOICE='2' && break
            ;;
        "Option 3")
            CHOICE='3' && break
            ;;
        "Quit")
            break
            ;;
        *) printf "\ninvalid option $REPLY\n";;
    esac
done



printf '\n'${CHOICE}' selected\n'
