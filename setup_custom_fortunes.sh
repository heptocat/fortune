#!/bin/bash

LOCATION=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
HOST_FORTUNE_DIR="/usr/local/share/games/fortunes"

# Check if fortune is installed, exit if it isn't installed
# If fortune is installed:
# - Symlink all files to the fortunes directory 
# - Create the .dat files
if command -v fortune;
then
    echo "Fortune is not installed."
    echo "Please install fortune."
    exit 1
else
    ls custom_fortunes/ >> /tmp/fortunes_tmp
    ln -s ${LOCATION}/custom_fortunes/* ${HOST_FORTUNE_DIR}/
    cd ${HOST_FORTUNE_DIR}
    for item in `cat /tmp/fortunes_tmp`;
    do 
        strfile ${item}
    done
    rm -f /tmp/fortunes_tmp
fi
