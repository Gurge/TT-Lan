#!/bin/bash

# set rights
#chown -R lgsm:lgsm .

if [ ! -f log/script/ts3server-script.log ]; then
    ./ts3server auto-install
fi

./ts3server update
./ts3server start

./ts3server details

# watch the console 
tail -f log/script/ts3server-script.log
