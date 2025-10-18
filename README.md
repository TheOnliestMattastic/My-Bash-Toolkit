```
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

# 🧰 My Bash Toolkit

![Last Commit](https://img.shields.io/github/last-commit/TheOnliestMattastic/My-Bash-Toolkit?color=bd93f9&style=for-the-badge&labelColor=6272a4)
![Repo Size](https://img.shields.io/github/repo-size/TheOnliestMattastic/My-Bash-Toolkit?color=bd93f9&style=for-the-badge&labelColor=6272a4)
![Code Size](https://img.shields.io/github/languages/code-size/TheOnliestMattastic/My-Bash-Toolkit?color=bd93f9&style=for-the-badge&labelColor=6272a4)
[![Shell](https://img.shields.io/badge/Shell-Bash-bd93f9?style=for-the-badge&logo=gnu-bash&logoColor=white&labelColor=6272a4)](https://www.gnu.org/software/bash/)
![License](https://img.shields.io/badge/License-CC0--1.0-bd93f9?style=for-the-badge&logo=creativecommons&logoColor=white&labelColor=6272a4)  

[![GitHub Pages](https://img.shields.io/badge/Live_Demo-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/My-Bash-Toolkit/)


## 🔭 Overview
This repository is a collection of Bash scripts I use to automate and streamline my Linux workflow. Each script is self‑contained, documented, and easy to adapt. Think of it as both a personal toolkit and a demonstration of my ability to write practical, maintainable automation.


## 🗺️ Scripts Included

### **installMyPackages.sh**
- **Purpose:** Bootstraps a fresh Nobara/Fedora system.  
- **Summary:** Installs a curated set of `dnf` packages (e.g., rclone, syncthing, htop, clamav) and Flatpak apps (e.g., Obsidian, Krita, Godot, RetroArch). Ensures Flathub is added if missing.  
- **Dependencies:** `dnf`, `flatpak`.  
- **Use Case:** Quickly sets up a new machine with my preferred tools and apps.  

### **mountMyCloudDrives.sh**
- **Purpose:** Mounts multiple cloud storage accounts locally.  
- **Summary:** Creates directories for OneDrive, Google Drive, and Dropbox, mounts them via `rclone`, verifies with `findmnt`, and reports success/failure with `xcowsay`.  
- **Dependencies:** `rclone`, `xcowsay`.  
- **Use Case:** Automates cloud drive access at login with playful feedback.  

### **myLoginScript.sh**
- **Purpose:** Adds polish and fun to login.  
- **Summary:** Loads my OpenRGB profile (`Home`) and displays a fortune message with `xcowsay`.  
- **Dependencies:** `openrgb`, `xcowsay`.  
- **Use Case:** Ensures consistent RGB setup and a lighthearted greeting every session.  

### **scheduleIautoCommands.sh**
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


## ⭐ Notes

- These scripts were written for my personal setup, so you may need to tweak paths or configs.  
- Contributions, forks, and adaptations are welcome.  


## 🛸 License

This project is licensed under the [CC0‑1.0 Universal License](https://creativecommons.org/publicdomain/zero/1.0/).


## 🌠 Recruiter’s Note

This repository isn’t a polished product — it’s a window into how I solve problems with code. Each script began as a solution to a real need, and together they show:
- Practical Bash scripting and Linux administration skills  
- The ability to automate repetitive tasks into efficient workflows  
- Clear documentation and maintainable code practices  

## 👽 Contact

[![Portfolio](https://img.shields.io/badge/Portfolio-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/)
[![GitHub](https://img.shields.io/badge/GitHub-Profile-bd93f9?style=for-the-badge&logo=github&logoColor=white&labelColor=6272a4)](https://github.com/theonliestmattastic)
[![Email](https://img.shields.io/badge/Email-matthew.poole485%40gmail.com-bd93f9?style=for-the-badge&logo=gmail&logoColor=white&labelColor=6272a4)](mailto:matthew.poole485@gmail.com)
[![Resume](https://img.shields.io/badge/Resume-PDF-bd93f9?style=for-the-badge&logo=adobeacrobatreader&logoColor=white&labelColor=6272a4)](https://raw.githubusercontent.com/theonliestmattastic/theonliestmattastic.github.io/main/assets/docs/resume.pdf)  

> _“Sometimes the questions are complicated and the answers are simple.”_ — Dr. Seuss