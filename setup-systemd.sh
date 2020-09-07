#!/bin/bash
#
# Script to install Tezos systemd scripts.
# (c) 2020 Tz Connect GmbH.
# This code is licensed under the MIT License, https://opensource.org/licenses/MIT
#
# You may set some environment variables to change the behavior of the script. Options are
# - TEZOS_USER   - defaults to logged-in user
#
set -e # halt on error
#

# Set the TEZOS_USER variable if empty
if [ -z $TEZOS_USER ]; then
    export TEZOS_USER=$USER
fi

export TEZOS_PATH=`pwd`

git submodule update
cd tezos-systemd-scripts
sh ./install.sh
sudo cp converted/* /etc/systemd/system
sudo systemctl daemon-reload
