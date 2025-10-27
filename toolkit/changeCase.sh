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
#                                presents,
#
#                             changeCase:
#         rename first char of each dir or file with upper or lower case
# --------------------------------------------------------------------------
# How to use this script:
# 0. (Optional) Edit the package lists below to suit your needs.
# 1. Make the script executable: chmod +x changeCase.sh
# Usage: ./changeCase [options] [path]
# --------------------------------------------------------------------------
set -e
# Defaults
DEFAULT_PATH="$PWD"
MODE="dirs"

# Parse arguments
while getOpts "p:d:f" opt; do
  case $opt in
  p)
    DEFAULT_PATH="$OPTARG"
    ;;
  d)
    MODE="dirs"
    ;;
  f)
    MODE="files"
    ;;
  *)
    cowsay "I am Error: Invalid Option $OPTARG. Use -p for path, -d for dirs, or -f for files" | lolcat
    exit 1
    ;;
  esac
done

for d in *; do
  if [ -d "$d" ]; then
    newname=$(echo "$d" | sed -E 's/^(.)/\L\1/')
    [ "$d" != "$newname" ] && mv -v "$d" "$newname"
  fi
done
