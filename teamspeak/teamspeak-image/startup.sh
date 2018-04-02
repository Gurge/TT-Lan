#!/bin/bash

#check if install is needed
cd /home/teamspeak

if [ ! -f ts3server ]; then
   wget https://gameservermanagers.com/dl/ts3server

   chmod +x ts3server
   chown -R teamspeak:teamspeak /home/teamspeak
   su teamspeak ./ts3server auto-install
fi

# set rights
chown -R teamspeak:teamspeak /home/teamspeak

# update and start the server
su teamspeak ./ts3server update
su teamspeak ./ts3server start

# start cron 
cron

# watch the console 
tail -f log/script/ts3-server-script.log




