#!/bin/bash

USER="<user name>"
DESTINATION=<path/to/destination/>

rsync \
--archive \
--quiet \
--delete \
--executability \
--no-links \
--include 'Documents' \
--include 'Music' \
--include 'Pictures' \
--include 'Templates' \
--include 'Videos' \
--include '.ssh' \
--exclude '*'
/home/$USER/ $DESTINATION
