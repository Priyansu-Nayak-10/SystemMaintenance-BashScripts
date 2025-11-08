# Bash Scripting Suite for System Maintenance

This project is a menu-driven Bash scripting toolkit that automates routine Linux system maintenance tasks. 
It includes scripts for creating backups, updating and cleaning the system, and monitoring log files for critical messages. 

All activity is recorded in a log file for reference and troubleshooting.

## Features
- **Automated Backup:** Creates compressed backups of any chosen directory.
- **System Update & Cleanup:** Runs `apt update`, `apt upgrade`, and removes unused packages.
- **Log Monitoring:** Watches system log files in real-time and highlights critical or error messages.
- **Menu Interface:** Simple interactive menu to run all tasks from one place.
- **Logging:** All actions are recorded in `logs/activity.log`.

## File Overview

| File | Purpose |
|------|---------|
| `Lib.sh` | Shared logging function and base path setup |
| `BackUp.sh` | Creates a backup of the selected directory |
| `Update_CleanUp.sh` | Updates system packages and performs cleanup |
| `LogMonitor.sh` | Monitors log files for warnings/errors |
| `MaintenanceMenu.sh` | Main menu interface to run all scripts |

## Directory Structure

ProjectFolder/
│
├── BackUp.sh
├── Update_CleanUp.sh
├── LogMonitor.sh
├── MaintenanceMenu.sh
├── Lib.sh
│
├── backups/ # Created automatically to store backup archives
└── logs/ # Created automatically to store activity.log

bash
Copy code

## How to Use

1. Open terminal and navigate to the project folder:
   ```bash
   cd path/to/ProjectFolder
Make all scripts executable (run once):

bash
Copy code
chmod +x *.sh
Run the main menu:

bash
Copy code
./MaintenanceMenu.sh
Example Output (Menu)
pgsql
Copy code
========= SYSTEM MAINTENANCE MENU =========
1) Create Backup
2) System Update + Cleanup
3) Monitor System Logs
4) Exit
===========================================
Requirements
Ubuntu / Debian based Linux

Bash shell

Sudo privileges (for system update)

Author
Priyansu Nayak
B.Tech CSE (2022–2026)
