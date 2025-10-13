#!/usr/bin/env bash
# !!! MUST run after:                                         !!!
# !!!     - rclone configured with OneDrive remote            !!!
# !!!     - ONEDRIVE directory is EMPTY                       !!!
#
#                       _____ _
#                      /__   \ |__   ___
#                        / /\/ '_ \ / _ \
#                       / /  | | | |  __/
#                       \/   |_| |_|\___|
#     ___               ___       ___       _ _           _
#    /___\_ __   ___   ( _ )     /___\_ __ | (_) ___  ___| |_
#   //  // '_ \ / _ \  / _ \/\  //  // '_ \| | |/ _ \/ __| __|
#  / \_//| | | |  __/ | (_>  < / \_//| | | | | |  __/\__ \ |_
#  \___/ |_| |_|\___|  \___/\/ \___/ |_| |_|_|_|\___||___/\__|
#                         _   _            _   _
#             /\/\   __ _| |_| |_ __ _ ___| |_(_) ___
#            /    \ / _` | __| __/ _` / __| __| |/ __|
#           / /\/\ \ (_| | |_| || (_| \__ \ |_| | (__
#           \/    \/\__,_|\__|\__\__,_|___/\__|_|\___|
#
#                           presents,
#
#                     mountingMyOneDrive:
#           a script to... well, mount my OneDrive
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
