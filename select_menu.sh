#!/usr/bin/env bash


PS3='What do you whant to eat?: '
OPTIONS=("Pizza" "Hamburger" "Ice Cream" "Quit")
select OPT in "${OPTIONS[@]}"
do
    case $OPT in
        "Pizza")
            CHOICE='pizza' && break
            ;;
        "Hamburger")
            CHOICE='hamburger' && break
            ;;
        "Ice Cream")
            CHOICE='ice cream' && break
            ;;
        "Quit")
            break
            ;;
        *) printf "\nSorry, we dont serve ${REPLY}\n";;
    esac
done


printf "\nYou get a ${CHOICE}\n"
