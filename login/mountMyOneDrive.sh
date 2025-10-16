#!/usr/bin/env bash
# !!! MUST run after:                                         !!!
# !!!     - rclone configured with OneDrive remote            !!!
# !!!     - ONEDRIVE directory is EMPTY                       !!!
# ___________.__             ________         .__  .__                 __   
# \__    ___/|  |__   ____   \_____  \   ____ |  | |__| ____   _______/  |_ 
#   |    |   |  |  \_/ __ \   /   |   \ /    \|  | |  |/ __ \ /  ___/\   __\
#   |    |   |   Y  \  ___/  /    |    \   |  \  |_|  \  ___/ \___ \  |  |  
#   |____|   |___|  /\___  > \_______  /___|  /____/__|\___  >____  > |__|  
#                 \/     \/          \/     \/             \/     \/        
#    _____          __    __                   __  .__                      
#   /     \ _____ _/  |__/  |______    _______/  |_|__| ____                
#  /  \ /  \\__  \\   __\   __\__  \  /  ___/\   __\  |/ ___\               
# /    Y    \/ __ \|  |  |  |  / __ \_\___ \  |  | |  \  \___               
# \____|__  (____  /__|  |__| (____  /____  > |__| |__|\___  >              
#         \/     \/                \/     \/               \/               
#
#                           presents,
#
#                       mountMyOneDrive:
#            a script to... well, mount my OneDrive
#                          via rclone
# ------------------------------------------------------------------------------
# How to use:
# 1. Edit `ONEDRIVE` path below (dir MUST be empty)
# 2. (Optional) Install xcowsay: `sudo dnf install xcowsay` (for notifications)
set -e
# -------------------------------------------------------------------------------
# Define mount dir
ONEDRIVE="/home/mattastic/OneDrive"

# Create dir if needed
mkdir -p "$ONEDRIVE"

# Mount dir (in background)
rclone --vfs-cache-mode full mount OneDrive: "$ONEDRIVE" &

# Wait for mount to stabilize
sleep 60s

# Check mount status
if findmnt -M "$ONEDRIVE" >/dev/null; then
	xcowsay "Mooooooo!: OneDrive successfully mounted!" &
else
	xcowsay --time=0 --release "I am Error: OneDrive failed to connect!" &
fi
