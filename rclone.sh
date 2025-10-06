#!/bin/bash

# Defining variable
ONEDRIVE="~/OneDrive"

# Ensuring directory exists
mkdir -p "$ONEDRIVE"

# Mounting cloud drives
rclone --vfs-cache-mode full mount OneDrive: "$ONEDRIVE"&
sleep 60s

# Checking if drive properly mounted
if ! findmnt -M "$ONEDRIVE" > /dev/null || ! findmnt -M "$GOOGLEDRIVE" > /dev/null; then
	xcowsay --time=0 --release "I am Error: OneDrive failed to connect!"&
else
	xcowsay "Mooooooo!: OneDrive successfully mounted!"&
fi
