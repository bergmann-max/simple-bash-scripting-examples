#!/bin/bash

if [[ "$email" =~ "^[A-Za-z0-9._%+-]+<b>@</b>[A-Za-z0-9.-]+<b>\.</b>[A-Za-z]{2,4}$" ]]
then
    echo "This email address looks fine: $email"
else
    echo "This email address is flawed: $email"
fi

######################################################################################################

if [ $# != 1 ]; then
    echo "Usage: $0 address"
    exit 1
else
    ip=$1
fi

if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
    echo "Looks like an IPv4 IP address"
elif [[ $ip =~ ^[A-Fa-f0-9:]+$ ]]; then
    echo "Could be an IPv6 IP address"
else
    echo "oops"
fi
