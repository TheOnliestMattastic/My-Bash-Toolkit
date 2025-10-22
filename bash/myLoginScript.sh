#!/usr/bin/env bash
# !!!!! MUST run after:                                                !!!!!
# !!!!!     - OpenRGB configured with a profile named `Home`           !!!!!
# !!!!!     - xcowsay installed                                        !!!!!
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
#                             myLoginScript:
#                  A script to run when I... well, login
# --------------------------------------------------------------------------
# How to use this script:
# 1. Ensure you have OpenRGB installed and configured with a profile named `Home`,
#    or change the script accordingly
# 2. Ensure you have xcowsay installed (for the cow greeting)
# 3. Place this script in your login scripts directory (e.g., ~/.config/autostart-scripts/),
#   or configure system settings to run this script at login
# 4. Make the script executable: chmod +x myLoginScript.sh
# --------------------------------------------------------------------------
set -e
openrgb -p Home
xcowfortune --time=0 --release&
