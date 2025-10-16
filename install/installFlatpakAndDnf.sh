#!/usr/bin/env bash
# !!! MUST run as regular user (not sudo/root) to use `--user` flatpak flag !!!
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
#                      installMyPackages:
#                   a single-shot installer
#            for my personal Nobara/Fedora systems
# --------------------------------------------------------------------------
# How to use:
# 1. Make executable: chmod +x installPackages.sh
# 2. Run as regular user (NOT sudo): ./installPackages.sh
#
# Edit DNF_PKGS/FLAT_PKGS to add/remove packages
set -e
# ---------------------- CONFIGURATION -------------------------------------
# List of dnf packages
DNF_PKGS=(
	rclone
	syncthing
	shfmt
	shellcheck
	nodejs-bash-language-server
	nvtop
	htop
	cowsay
	xcowsay
	cbonsai
	piper
	tealdeer
	clamav
	clamav-freshclam
	psutils
)

# List of flatpaks; use <application-id>
FLAT_PKGS=(
	md.obsidian.Obsidian
	com.super_productivity.SuperProductivity
	org.wireshark.Wireshark
	io.github.nokse22.asciidraw
	org.videolan.VLC
	org.kde.krita
	org.godotengine.Godot
	org.libretro.RetroArch
	com.jetbrains.Rider
	eu.betterbird.Betterbird
	org.bleachbit.BleachBit
)

# -------------------------------------------------------------------------
# Ensure flathub is present
if ! flatpak remotes | grep -q flathub; then
	echo "Flathub not found, adding remote now..."
	flatpak remote-add flathub https://flathub.org/repo/flathub.flatpak
fi

# Install dnf packages
for pkg in "${DNF_PKGS[@]}"; do
	echo "Installing dnf package: $pkg..."
	sudo dnf --assumeyes install "$pkg"
done

# Install flatpaks
for pkg in "${FLAT_PKGS[@]}"; do
	echo "Installing flatpak: $pkg..."
	flatpak install --user --assumeyes --or-update "$pkg"
done
