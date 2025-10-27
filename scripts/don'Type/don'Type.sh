#!/usr/bin/env bash
# ___________.__             ________         .__  .__                 __   
# \__    ___/|  |__   ____   \_____  \   ____ |  | |__| ____   _______/  |_ 
#   |    |   |  |  \_/ __ \   /   |   \ /    \|  | |  |/ __ \ /  ___/\   __\
#   |    |   |   Y  \  ___/  /    |    \   |  \  |_|  \  ___/ \___ \  |  |  
#   |____|   |___|  /\___  > \_______  /___|  /____/__|\___  >____  > |__|  
#                 \/     \/          \/     \/             \/     \/        
# /\        _____          __    __                   __  .__             /\
# \ \      /     \ _____ _/  |__/  |______    _______/  |_|__| ____      / /
#  \ \    /  \ /  \\__  \\   __\   __\__  \  /  ___/\   __\  |/ ___\    / / 
#   \ \  /    Y    \/ __ \|  |  |  |  / __ \_\___ \  |  | |  \  \___   / /  
#    \ \ \____|__  (____  /__|  |__| (____  /____  > |__| |__|\___  > / /   
#     \/         \/     \/                \/     \/               \/  \/    
#
#                                presents,
#
#                                don'Type:
#               Automatically binds common in-game commands
#                     to function keys for Schedule I
# ------------------------------------------------------------------------------
# How to use this script:
# 1. Ensure you have xdotool installed: `sudo dnf install xdotool`
# 2. Make this script executable: chmod +x scheduleIautoCommands.sh
# 3. Run this script, then quickly switch to the game window within 5 seconds
#    to allow the script to send the key presses to the game
# 4. Do not touch the keyboard or mouse while the script is running
# Pro tip:
# - Create a desktop shortcut, alias, or a keybinding to run this script
#   quickly whenever you start the game to set up your keybindings
# Note:
# - This script will take about 30 seconds to complete and NPCs may interrupt
#   the process if they interact with you during that time, so be sure your 
#   character is in an area where interruptions are unlikely.
# -------------------------------------------------------------------------------
set -e
# Short delay to allow user to switch to game window
sleep 5

# Simulate key presses to bind commands with xdotool
xdotool type --delay 100 "~bind f1 teleport motelroom"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f2 teleport sweatshop"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f3 teleport storageunit"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f4 teleport bungalow"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f5 teleport barn"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f6 teleport docks"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f7 teleport laundromat"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f8 teleport postoffice"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f9 teleport church"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f10 changebalance 1000"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f11 cleartrash"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 100 "~bind f12 clearinventory"
sleep 1
xdotool key Enter
