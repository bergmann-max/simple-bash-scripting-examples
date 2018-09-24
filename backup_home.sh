#!/usr/bin/env bash

USER="<user_name>"
DESTINATION="<path/to/destination/>"


rsync -avc --no-perms \
/home/$USER/Documents/ \
/home/$USER/Downloads/ \
/home/$USER/Pictures/ \
/home/$USER/Videos/ \
/home/$USER/Music/ \
/home/$USER/KeePass/ \
--exclude '*.img' \
--exclude '*.iso' \
$DESTINATION
