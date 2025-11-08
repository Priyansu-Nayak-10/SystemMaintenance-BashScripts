#!/bin/bash

source "$(pwd)/Lib.sh"

read -p "Enter log file to monitor (default: /var/log/syslog): " PATH_LOG
PATH_LOG="${PATH_LOG:-/var/log/syslog}"

write_log "Monitoring $PATH_LOG for warning or error entries.(Press CTRL+C to stop)"

tail -f "$PATH_LOG" | grep --line-buffered -Ei "error|warning|critical|fail" | while read LINE
do
  write_log "ALERT: $LINE"
done
