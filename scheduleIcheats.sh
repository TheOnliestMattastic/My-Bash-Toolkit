#!/usr/bin/env bash
# !!! Requires xdotool                                          !!!
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
