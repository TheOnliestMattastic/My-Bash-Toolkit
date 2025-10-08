#!/usr/bin/env bash
# !!! MUST run as regular user (not sudo/root) to use `--user` flatpak flag !!!
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
#                        installPackages:
#                    a single-shot installer
#              for my personal Nobara/Fedora systems
# -----------------------------------------------------------------
# How to use:
# 1. Make executable: chmod +x installPackages.sh
# 2. Run as regular user (NOT sudo): ./installPackages.sh
#
# Edit DNF_PKGS/FLAT_PKGS to add/remove packages
set -e
# ------------- CONFIGURATION -------------------------------------
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
