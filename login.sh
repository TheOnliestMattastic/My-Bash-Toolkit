#!/usr/bin/env bash
# !!! MUST run after:                                         !!!
# !!!     - OpenRGB configured with a profile named `Home`    !!!
# !!!     - installing xcowsay                                !!!
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
#                           myLogin:
#              a script to run when I... well, login
# -----------------------------------------------------------------
# How to use:
# 1. Ensure OpenRGB is configured with a `Home` profile 
# 2. Ensure xcowsay is installed: `sudo dnf install xcowsay`
set -e
# -----------------------------------------------------------------
openrgb -p Home
xcowfortune --time=0 --release&
