#!/bin/bash

ROOT_DIR="$(pwd)"

LOG_FOLDER="$ROOT_DIR/logs"
mkdir -p "$LOG_FOLDER"
LOG_FILE="$LOG_FOLDER/activity.log"

write_log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') :: $1" | tee -a "$LOG_FILE"
}
