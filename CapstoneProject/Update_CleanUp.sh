
#!/bin/bash

source "$(pwd)/Lib.sh"

write_log "Starting system update..."

if sudo apt update -y && sudo apt upgrade -y; then
  write_log "System updated successfully."
else
  write_log "System update encountered errors."
fi

write_log "Removing unused packages and cleaning cache..."
sudo apt autoremove -y && sudo apt clean

write_log "Cleanup complete."
