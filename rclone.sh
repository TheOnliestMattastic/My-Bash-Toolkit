#!/bin/bash

# Defining variables
STORAGE="/run/media/mattastic/7d14135c-9d09-4373-bc72-613c6dd992de"
ONEDRIVE="$STORAGE/OneDrive"
GOOGLEDRIVE="$STORAGE/GoogleDrive"
TRIES=5
DELAY=10

# Checking if Storage Drive is mounted
while ! findmnt -M "$STORAGE" > /dev/null; do
	sleep $DELAY
	TRIES=$((TRIES -1))

	if [ $TRIES -le 0 ]; then
		xcowsay --time=0 --release "I am Error: Stooooorage Drive is not mounted!"&
		exit
	fi
done

# Creating cloud directories if they doesn't exist
mkdir -p "$ONEDRIVE"
mkdir -p "$GOOGLEDRIVE"

# Mounting cloud drives
rclone --vfs-cache-mode full mount OneDrive: "$ONEDRIVE"&
rclone --vfs-cache-mode full mount GoogleDrive: "$GOOGLEDRIVE"&

sleep 60s

# Checking if cloud drives properly mounted
if ! findmnt -M "$ONEDRIVE" > /dev/null || ! findmnt -M "$GOOGLEDRIVE" > /dev/null; then
	if ! findmnt -M "$ONEDRIVE" > /dev/null; then
		xcowsay --time=0 --release "I am Error: OneDrive failed to connect!"&
	fi
	if ! findmnt -M "$GOOGLEDRIVE" > /dev/null; then
		xcowsay --time=0 --release "I am Error: GoogleDrive failed to connect"&
	fi
else
	xcowsay "Mooooooo!: OneDrive and GooooooogleDrive successfully connected!"&
fi
