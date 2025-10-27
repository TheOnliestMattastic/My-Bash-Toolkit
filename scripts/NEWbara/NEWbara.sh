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
#                                NEWbara:
#                         A single-shot installer
#                      for my personal Nobara system
# --------------------------------------------------------------------------
# Prerequisites:
# - MUST RUN AS REGULAR USER (NOT SUDO/ROOT) TO USE THE `--user` FLATPAK FLAG
# - You will still be prompted for your password for dnf installs
# - This script is licensed under the GNU General Public License v3.0
#
# How to use this script:
# 1. (Optional) Edit the package lists below or provide files with -d, -f, -s flags.
# 2. Make the script executable: chmod +x ./NEWbara.sh
# 3. Run the script: ./NEWbara.sh [-d dnf_packages.txt] [-f flatpak_packages.txt] [-s snap_packages.txt]
# --------------------------------------------------------------------------
set -e
# Trap for error handling
trap 'echo "Error occurred at line $LINENO"' ERR

# Check for required commands
for cmd in dnf flatpak snap sudo; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo "Error: $cmd not found. Please install it."
        exit 1
    fi
done

# Function to print short help
short_help() {
    echo "Usage: $0 [-f flatpak_file.txt] [-s snap_file.txt] [-d dnf_file.txt] [-S] [-n] [-h|--help]"
    echo ""
    echo "Options:"
    echo "  -d FILE     Load DNF packages from FILE"
    echo "  -f FILE     Load Flatpak packages from FILE"
    echo "  -s FILE     Load Snap packages from FILE"
    echo "  -S          Install Flatpaks system-wide"
    echo "  -n          Dry run (preview actions)"
    echo "  -h          Show this reference sheet"
    echo "  --help      Show detailed help"
}

# Function to print detailed help
print_help() {
    cat << EOF
NAME
    NEWbara.sh - Install packages via DNF, Flatpak, and Snap

SYNOPSIS
    ./NEWbara.sh [OPTIONS]

DESCRIPTION
    This script installs a curated set of packages for Nobara systems using DNF, Flatpak, and Snap.
    Flatpaks are installed user-specific by default (as recommended by the Nobara project wiki: https://wiki.nobara-project.org/Flatpak_Installation); use -S for system-wide.
    It can also load custom package lists from text files.

OPTIONS
    -d FILE     Load DNF packages from FILE (one package per line).
    -f FILE     Load Flatpak packages from FILE (one app ID per line).
    -s FILE     Load Snap packages from FILE (one package per line).
    -S          Install Flatpaks system-wide (default is user-specific).
    -n          Dry run: preview actions without making changes.
    -h          Display short reference sheet.
    --help      Display this detailed help message and exit.

EXAMPLES
    ./NEWbara.sh
        Install default packages (user Flatpaks).

    ./NEWbara.sh -S
        Install default packages with system-wide Flatpaks.

    ./NEWbara.sh -f my_flatpaks.txt
        Install default DNF/Snap packages and custom user Flatpaks from my_flatpaks.txt.

    ./NEWbara.sh -d custom_dnf.txt -s custom_snaps.txt -S
        Install custom DNF/Snap packages and default system-wide Flatpaks.

    ./NEWbara.sh -n
        Preview default installations without making changes.

FILES
    Package files should contain one package/app per line, e.g.:
        org.videolan.VLC
        htop

AUTHOR
    Generated for personal use.

EOF
}

# Parse command-line options
flatpak_file=""
snap_file=""
dnf_file=""
system_flatpak=false
dry_run=false
log_file="NEWbara_$(date +%Y%m%d_%H%M%S).log"
if [[ $1 == "--help" ]]; then
    print_help
    exit 0
fi
while getopts "f:s:d:hSn" opt; do
	case $opt in
		f) flatpak_file="$OPTARG" ;;
		s) snap_file="$OPTARG" ;;
		d) dnf_file="$OPTARG" ;;
		S) system_flatpak=true ;;
		n) dry_run=true ;;
		h) short_help; exit 0 ;;
		*) echo "Usage: $0 [-f flatpak_file.txt] [-s snap_file.txt] [-d dnf_file.txt] [-S] [-n] [-h|--help]" >&2; exit 1 ;;
    esac
done

# Set up logging
exec > >(tee "$log_file") 2>&1

# ---------------------------- CONFIGURATION -------------------------------
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

# Load packages from files if specified
if [ -n "$dnf_file" ]; then
    mapfile -t DNF_PKGS < "$dnf_file"
fi
if [ -n "$flatpak_file" ]; then
    mapfile -t FLAT_PKGS < "$flatpak_file"
fi
if [ -n "$snap_file" ]; then
    mapfile -t SNAP_PKGS < "$snap_file"
fi

# ------------------------ END OF CONFIGURATION ----------------------------
# Check for sudo
if ! command -v sudo >/dev/null 2>&1; then
   echo "sudo not found. Please install sudo."
   exit 1
fi

# Install dnf packages
for pkg in "${DNF_PKGS[@]}"; do
    echo "Installing dnf package: $pkg..."
    if [ "$dry_run" = true ]; then
      echo "[DRY RUN] Would run: sudo dnf --assumeyes --quiet install $pkg"
   else
      sudo dnf --assumeyes --quiet install "$pkg"
   fi
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
if [ "$system_flatpak" = true ]; then
	flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
else
	flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
fi

# Install flatpaks
for pkg in "${FLAT_PKGS[@]}"; do
    echo "Installing flatpak: $pkg..."
    if [ "$dry_run" = true ]; then
       if [ "$system_flatpak" = true ]; then
          echo "[DRY RUN] Would run: flatpak install --assumeyes flathub $pkg"
       else
          echo "[DRY RUN] Would run: flatpak install --user --assumeyes flathub $pkg"
       fi
    else
        if [ "$system_flatpak" = true ]; then
            flatpak install --assumeyes flathub "$pkg" || echo "Warning: Issue with $pkg (possibly already installed), continuing..."
        else
            flatpak install --user --assumeyes flathub "$pkg" || echo "Warning: Issue with $pkg (possibly already installed), continuing..."
        fi
    fi
done

moo "Flatpaks installed!"

# Install snap packages
for pkg in "${SNAP_PKGS[@]}"; do
    moo "Installing snap package: $pkg..."
    if [ "$dry_run" = true ]; then
      echo "[DRY RUN] Would run: sudo snap install $pkg"
   else
      sudo snap install "$pkg"
   fi
done

moo "Snap packages installed. Installation complete!"

# Cleanup
moo "Starting cleanup process..."

# Remove orphaned flatpak runtimes and extensions
moo "Removing orphaned flatpak runtimes and extensions..."
if [ "$system_flatpak" = true ]; then
    flatpak uninstall --assumeyes --unused
else
    flatpak uninstall --user --assumeyes --unused
fi

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

moo "Orphaned dnf packages removed. Cleanup successful!"

moo "All tasks completed! Enjoy your setup!"