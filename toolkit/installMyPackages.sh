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
#                           installMyPackages:
#                         A single-shot installer
#                     for my personal Nobara systems
# --------------------------------------------------------------------------
# Prerequisites:
# - MUST RUN AS REGULAR USER (NOT SUDO/ROOT) TO USE THE `--user` FLATPAK FLAG
# - You will be prompted for your password for dnf installs
#
# How to use this script:
# 1. (Optional) Edit the package lists below to suit your needs.
# 2. Make the script executable: chmod +x installMyPackages.sh
# 3. Run the script: ./installMyPackages.sh
# ---------------------------- CONFIGURATION -------------------------------
#set -e
# Trap for error handling
trap 'echo "Error occurred at line $LINENO"' ERR

# Optional: Redirect output to log file for debugging (uncomment if needed)
#exec > >(tee -a install.log) 2>&1

# List of dnf packages
DNF_PKGS=(
	rclone
	syncthing
	shfmt
	shellcheck
	nodejs-bash-language-server
	nvtop
	htop
	cbonsai
	piper
	tealdeer
	clamav
	clamav-freshclam
	psutils
	toilet
	figlet
	lolcat
	cowsay
	xcowsay
	love
)

# List of flatpak packages (use app ID for stability, e.g., org.videolan.VLC)
FLAT_PKGS=(
	"md.obsidian.Obsidian"
	"com.super_productivity.SuperProductivity"
	"io.github.nokse22.asciidraw"
	"org.videolan.VLC"
	"org.kde.krita"
	"org.godotengine.Godot"
	"org.libretro.RetroArch"
	"eu.betterbird.Betterbird"
	"org.bleachbit.BleachBit"
	"com.jetpackduba.Gitnuro"
)

# List of snap packages
SNAP_PKGS=(
	snapd
	marksman
)
# ------------------------ END OF CONFIGURATION ----------------------------
# Check for sudo
if ! command -v sudo >/dev/null 2>&1; then
   echo "sudo not found. Please install sudo."
   exit 1
fi

# Install dnf packages
for pkg in "${DNF_PKGS[@]}"; do
	echo "Installing dnf package: $pkg..."
	sudo dnf --assumeyes --quiet install "$pkg"
done

# Function to display messages with optional xcowsay and lolcat
hasCow=$(which cowsay)
hasLolcat=$(which lolcat)
moo() {
	local msg="$1"
	if [ -z "$hasCow" ] && [ -z "$hasLolcat" ]; then
		echo "$msg"
	elif [ -z "$hasCow" ]; then
		echo "$msg" | lolcat
	elif [ -z "$hasLolcat" ]; then
		echo "$msg" | cowsay -r
	else
		echo "$msg" | cowsay -r | lolcat
	fi
}

moo "dnf packages installed!"

# Ensure flathub is present
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install flatpaks
for pkg in "${FLAT_PKGS[@]}"; do
echo "Installing flatpak: $pkg..."
flatpak install --user --assumeyes --or-update --noninteractive flathub "$pkg"
done

echo "Flatpaks installed!"

# Install snap packages
for pkg in "${SNAP_PKGS[@]}"; do
	moo "Installing snap package: $pkg..."
	sudo snap install "$pkg"
done

moo "Snap packages installed. Installation complete!"

# Cleanup
moo "Starting cleanup process..."

# Remove orphaned flatpak runtimes and extensions
moo "Removing orphaned flatpak runtimes and extensions..."
flatpak uninstall --user --assumeyes --unused

moo "Orphaned flatpak runtimes and extensions removed"

# Remove orphaned snap packages
moo "Removing orphaned snap packages..."
for orphan in $(snap list --all | awk '$6 == "disabled" {print $1}'); do
snap remove --purge --yes "$orphan"
done

moo "Orphaned snap packages removed"

# Remove orphaned dnf packages
moo "Removing orphaned dnf packages..."
sudo dnf autoremove --assumeyes --quiet

moo "Orphaned dnf packages removed"

moo "All cleanup completed successfully!"

