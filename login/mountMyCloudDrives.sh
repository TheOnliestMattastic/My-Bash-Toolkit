#!/usr/bin/env bash
# !!!!! REQUIRES rclone configured with remotes named                  !!!!!
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
#                                presents,
#
#                           mountMyCloudDrives:
#               A script to... well, mount my cloud drives
#                               via rclone
# --------------------------------------------------------------------------
# How to use this script:
# 1. Ensure you have rclone installed and configured with remotes named 
#    `OneDrive`, `GoogleDrive`, and `Dropbox`, or change the script accordingly.
# 2. Ensure the local mount directories are empty or do not exist.
# 3. Make the script executable: chmod +x mountMyCloudDrives.sh
# Pro tip:
# - You may want to set this script to run at login for convenience by placing
#   it in your login scripts directory (e.g., ~/.config/autostart-scripts/) or
#   configuring system settings to run this script at login.
# --------------------------------------------------------------------------
set -e
# Define mount directories
ONEDRIVE="/home/mattastic/OneDrive"
GOOGLEDRIVE="/home/mattastic/GoogleDrive"
DROPBOX="/home/mattastic/Dropbox"

# Create directories if they don't exist
mkdir -p "$ONEDRIVE"
mkdir -p "$GOOGLEDRIVE"
mkdir -p "$DROPBOX"

# Mount directories using rclone
rclone --vfs-cache-mode full mount OneDrive: "$ONEDRIVE" &
rclone --vfs-cache-mode full mount GoogleDrive: "$GOOGLEDRIVE" &
rclone --vfs-cache-mode full mount Dropbox: "$DROPBOX" &

# Wait for mounts to establish
sleep 60s

# Create array and track failures
failures()

! findmnt -M "$ONEDRIVE" && failures+="OneDrive"
! findmnt -M "$GOOGLEDRIVE" && failures+="GooooogleDrive"
! findmnt -M "$DROPBOX" && failures+="Dropbox"

# Notify user of success or failure
if [ ${#failures[@]} -eq 0 ]; then
	xcowsay "Mooooooo!: OneDrive, GooooogleDrive, and Dropbox successfully mounted!" &
elif [ ${#failures[@]} -eq 1 ]; then
	xcowsay --time=0 --release "I am Error: ${#failures[0]} failed to connect!" &
elif [ ${#failures[@]} -eq 2 ]; then
	xcowsay --time=0 --release "I am Error: ${#failures[0]} and ${#failures[1]} failed to connect!" &
else
	xcowsay --time=0 --release "I am Error: All drives failed to connect!" &
fi