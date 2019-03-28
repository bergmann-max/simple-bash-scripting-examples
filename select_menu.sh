#!/usr/bin/env bash


PS3='Please enter your choice: '
OPTIONS=("Option 1" "Option 2" "Option 3" "Quit")
select OPT in "${OPTIONS[@]}"
do
    case $OPT in
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
        *) printf "\ninvalid option ${REPLY}\n";;
    esac
done


printf '\n'${CHOICE}' selected\n'
