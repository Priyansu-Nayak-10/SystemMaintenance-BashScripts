#!/bin/bash

while true; do
  echo ""
  echo "========= SYSTEM MAINTENANCE MENU ========="
  echo "1) Create Backup"
  echo "2) System Update + Cleanup"
  echo "3) Monitor System Logs"
  echo "4) Exit"
  echo "======================================"
  read -p "Choose an option: " CHOICE

  case "$CHOICE" in
    1) ./BackUp.sh ;;
    2) ./Update_CleanUp.sh ;;
    3) ./LogMonitor.sh ;;
    4) echo "Exiting..."; break ;;
    *) echo "Invalid option. Try again." ;;
  esac
done
