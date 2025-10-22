# 🧰 My Bash Toolkit

```txt
___________.__             ________         .__  .__                 __   
\__    ___/|  |__   ____   \_____  \   ____ |  | |__| ____   _______/  |_ 
  |    |   |  |  \_/ __ \   /   |   \ /    \|  | |  |/ __ \ /  ___/\   __\
  |    |   |   Y  \  ___/  /    |    \   |  \  |_|  \  ___/ \___ \  |  |  
  |____|   |___|  /\___  > \_______  /___|  /____/__|\___  >____  > |__|  
                \/     \/          \/     \/             \/     \/        
   _____          __    __                   __  .__                      
  /     \ _____ _/  |__/  |______    _______/  |_|__| ____                
 /  \ /  \\__  \\   __\   __\__  \  /  ___/\   __\  |/ ___\               
/    Y    \/ __ \|  |  |  |  / __ \_\___ \  |  | |  \  \___               
\____|__  (____  /__|  |__| (____  /____  > |__| |__|\___  >              
        \/     \/                \/     \/               \/               
```

![Last Commit](https://img.shields.io/github/last-commit/TheOnliestMattastic/My-Bash-Toolkit?color=bd93f9&style=for-the-badge&labelColor=6272a4)
![Repo Size](https://img.shields.io/github/repo-size/TheOnliestMattastic/My-Bash-Toolkit?color=bd93f9&style=for-the-badge&labelColor=6272a4)
![Code Size](https://img.shields.io/github/languages/code-size/TheOnliestMattastic/My-Bash-Toolkit?color=bd93f9&style=for-the-badge&labelColor=6272a4)
![License](https://img.shields.io/badge/License-CC0--1.0-bd93f9?style=for-the-badge&logo=creativecommons&logoColor=white&labelColor=6272a4)  
[![Live Site](https://img.shields.io/badge/Toolkit-Site-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/my-bash-toolkit/)
[![Portfolio](https://img.shields.io/badge/Portfolio-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/)
[![GitHub](https://img.shields.io/badge/GitHub-Profile-bd93f9?style=for-the-badge&logo=github&logoColor=white&labelColor=6272a4)](https://github.com/theonliestmattastic)

## 🔭 Overview

This repository is a collection of Bash scripts I use to automate and streamline my Linux workflow. Each script is self‑contained, documented, and easy to adapt. Think of it as both a personal toolkit and a demonstration of my ability to write practical, maintainable automation.

## 🗺️ Scripts Included

### 📡 **installMyPackages.sh**

[![Bash](https://img.shields.io/badge/Shell-Bash-bd93f9?logo=gnu-bash&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://www.gnu.org/software/bash/)
[![DNF](https://img.shields.io/badge/Package-dnf-bd93f9?logo=fedora&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://docs.fedoraproject.org/en-US/quick-docs/dnf/)
[![Flatpak](https://img.shields.io/badge/Flatpak-Installer-bd93f9?logo=flatpak&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://flatpak.org/)

- **Purpose:** Bootstraps a fresh Nobara/Fedora system.  
- **Summary:** Installs a curated set of `dnf` packages (e.g., rclone, syncthing, htop, clamav) and Flatpak apps (e.g., Obsidian, Krita, Godot, RetroArch). Ensures Flathub is added if missing.  
- **Dependencies:** `dnf`, `flatpak`.  
- **Use Case:** Quickly sets up a new machine with my preferred tools and apps.  

### ☁️ **mountMyCloudDrives.sh**

[![Bash](https://img.shields.io/badge/Shell-Bash-bd93f9?logo=gnu-bash&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://www.gnu.org/software/bash/)
[![Rclone](https://img.shields.io/badge/Cloud-rclone-bd93f9?logo=icloud&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://rclone.org/)
[![xcowsay](https://img.shields.io/badge/Fun-xcowsay-bd93f9?style=for-the-badge&labelColor=6272a4)](https://github.com/nickg/xcowsay)

- **Purpose:** Mounts multiple cloud storage accounts locally.  
- **Summary:** Creates directories for OneDrive, Google Drive, and Dropbox, mounts them via `rclone`, verifies with `findmnt`, and reports success/failure with `xcowsay`.  
- **Dependencies:** `rclone`, `xcowsay`.  
- **Use Case:** Automates cloud drive access at login with playful feedback.  

### 🌈 **myLoginScript.sh**

[![Bash](https://img.shields.io/badge/Shell-Bash-bd93f9?logo=gnu-bash&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://www.gnu.org/software/bash/)
[![OpenRGB](https://img.shields.io/badge/RGB-OpenRGB-bd93f9?style=for-the-badge&labelColor=6272a4)](https://openrgb.org/)
[![xcowsay](https://img.shields.io/badge/Fun-xcowsay-bd93f9?style=for-the-badge&labelColor=6272a4)](https://github.com/nickg/xcowsay)

- **Purpose:** Adds polish and fun to login.  
- **Summary:** Loads my OpenRGB profile (`Home`) and displays a fortune message with `xcowsay`.  
- **Dependencies:** `openrgb`, `xcowsay`.  
- **Use Case:** Ensures consistent RGB setup and a lighthearted greeting every session.  

### 🤖 **scheduleIautoCommands.sh**

[![Bash](https://img.shields.io/badge/Shell-Bash-bd93f9?logo=gnu-bash&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://www.gnu.org/software/bash/)
[![xdotool](https://img.shields.io/badge/Automation-xdotool-bd93f9?style=for-the-badge&labelColor=6272a4)]()

- **Purpose:** Automates in‑game keybinding setup for *Schedule I*.  
- **Summary:** Uses `xdotool` to bind teleport, inventory, and utility commands to function keys. Runs after a short delay so you can switch to the game window.  
- **Dependencies:** `xdotool`.  
- **Use Case:** Saves time by auto‑configuring repetitive in‑game commands.  

## 🚀 Getting Started

Clone the repository:

```sh
git clone https://github.com/TheOnliestMattastic/My-Bash-Toolkit.git
cd My-Bash-Toolkit
```

Make a script executable and run:

```sh
chmod +x script-name.sh
./script-name.sh
```

> Replace `script-name.sh` with the script you want to use.  
> See script headers for specific dependencies.

## 🌕 Notes

- These scripts were written for my personal setup, so you may need to tweak paths or configs.  
- Contributions, forks, and adaptations are welcome.  

## 🛸 License

This project is licensed under the [CC0‑1.0 Universal License](https://creativecommons.org/publicdomain/zero/1.0/).

## 🪐 Recruiter’s Note

This repository isn’t a polished product — it’s a window into how I solve problems with code. Each script began as a solution to a real need, and together they show:

- Practical Bash scripting and Linux administration skills  
- The ability to automate repetitive tasks into efficient workflows  
- Clear documentation and maintainable code practices  

## 👽 Contact

Curious about my projects? Want to collaborate or hire for entry-level IT/support/dev roles? Shoot me an email or connect on GitHub—I reply quickly and love new challenges.

[![Portfolio](https://img.shields.io/badge/Portfolio-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/)
[![GitHub](https://img.shields.io/badge/GitHub-Profile-bd93f9?style=for-the-badge&logo=github&logoColor=white&labelColor=6272a4)](https://github.com/theonliestmattastic)
[![Email](https://img.shields.io/badge/Email-matthew.poole485%40gmail.com-bd93f9?style=for-the-badge&logo=gmail&logoColor=white&labelColor=6272a4)](mailto:matthew.poole485@gmail.com)

> *“Sometimes the questions are complicated and the answers are simple.”* — Dr. Seuss
