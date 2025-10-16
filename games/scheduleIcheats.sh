#!/usr/bin/env bash
# !!! Requires xdotool                                          !!!
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
#                       scheduleIcheats:
#             Auto-presses Schedule I console cheats
#
# ------------------------------------------------------------------------------
# How to use:
# 1. Install xdotool
# 2. Set as keyboard shortcut
# 3. DON'T touch keyboard after running
set -e
# -------------------------------------------------------------------------------
# Give player 5 secs to prepare environment before executing 
sleep 5

# Input commands with a 1 sec pause between to ensure precise execution
xdotool type --delay 150 "~bind f1 teleport motelroom"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 150 "~bind f2 teleport sweatshop"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 150 "~bind f3 teleport storageunit"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 150 "~bind f4 teleport bungalow"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 150 "~bind f5 teleport barn"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 150 "~bind f6 teleport docks"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 150 "~bind f11 changebalance -160"
sleep 1
xdotool key Enter
sleep 1
xdotool type --delay 150 "~bind f12 clearinventory"
sleep 1
xdotool key Enter
