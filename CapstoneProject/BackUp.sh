#!/bin/bash

source "$(pwd)/Lib.sh"

read -p "Enter folder to back up (leave blank for current directory): " INPUT
TARGET="${INPUT:-$(pwd)}"

if [[ ! -d "$TARGET" ]]; then
  write_log "ERROR: '$TARGET' is not a valid directory."
  exit 1
fi

DEST="$ROOT_DIR/backups"
mkdir -p "$DEST"

TIME_TAG=$(date +"%Y%m%d_%H%M%S")
ARCHIVE="Backup_$(basename "$TARGET")_$TIME_TAG.tar.gz"

write_log "Creating backup for $TARGET ..."

if tar -czf "$DEST/$ARCHIVE" -C "$(dirname "$TARGET")" "$(basename "$TARGET")"; then
  write_log "Backup saved at: $DEST/$ARCHIVE"
else
  write_log "Backup process failed."
fi
