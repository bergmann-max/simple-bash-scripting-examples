#!/bin/bash

USER="<user name>"
DESTINATION=<path/to/destination/>


rsync -avc --no-perms \
/home/$USER/Documents/ \
/home/$USER/Downloads/ \
/home/$USER/Pictures/ \
/home/$USER/Videos/ \
/home/$USER/Music/ \
/home/$USER/KeePass/ \
/home/$USER/.ssh/ \
--exclude '*.img' \
--exclude '*.iso' \
$DESTINATION
