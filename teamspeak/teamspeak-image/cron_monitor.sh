#!/bin/bash

cd /home/cssserver

if [ -f cssserver ]; then
   ./cssserver monitor > log/cron_monitor.log
fi





