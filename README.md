# 🧰 My Bash Toolkit

```txt
        ___________.__             ________         .__  .__                 __    
        \__    ___/|  |__   ____   \_____  \   ____ |  | |__| ____   _______/  |_  
          |    |   |  |  \_/ __ \   /   |   \ /    \|  | |  |/ __ \ /  ___/\   __\ 
          |    |   |   Y  \  ___/  /    |    \   |  \  |_|  \  ___/ \___ \  |  |   
          |____|   |___|  /\___  > \_______  /___|  /____/__|\___  >____  > |__|   
                        \/     \/          \/     \/             \/     \/         
        /\        _____          __    __                   __  .__             /\ 
        \ \      /     \ _____ _/  |__/  |______    _______/  |_|__| ____      / / 
         \ \    /  \ /  \\__  \\   __\   __\__  \  /  ___/\   __\  |/ ___\    / /  
          \ \  /    Y    \/ __ \|  |  |  |  / __ \_\___ \  |  | |  \  \___   / /   
           \ \ \____|__  (____  /__|  |__| (____  /____  > |__| |__|\___  > / /    
            \/         \/     \/                \/     \/               \/  \/     
```

![Last Commit](https://img.shields.io/github/last-commit/TheOnliestMattastic/My-Bash-Toolkit?color=bd93f9&style=for-the-badge&labelColor=6272a4)
![Repo Size](https://img.shields.io/github/repo-size/TheOnliestMattastic/My-Bash-Toolkit?color=bd93f9&style=for-the-badge&labelColor=6272a4)
![Code Size](https://img.shields.io/github/languages/code-size/TheOnliestMattastic/My-Bash-Toolkit?color=bd93f9&style=for-the-badge&labelColor=6272a4)
![License](https://img.shields.io/badge/License-GPL--3.0-bd93f9?style=for-the-badge&logo=gnu&logoColor=white&labelColor=6272a4)  
[![Live Site](https://img.shields.io/badge/Toolkit-Site-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/my-bash-toolkit/)
[![Portfolio](https://img.shields.io/badge/Portfolio-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/)
[![GitHub](https://img.shields.io/badge/GitHub-Profile-bd93f9?style=for-the-badge&logo=github&logoColor=white&labelColor=6272a4)](https://github.com/theonliestmattastic)

## 🧭 Table of Contents

- [🔭 Overview](#-overview)
- [🗺️ Scripts Included](#️-scripts-included)
  - [🐧 NEWbara.sh](#-newbarash)
  - [☁️ mountMyCloudDrives.sh](#️-mountmyclouddrivessh)
  - [🌈 myLoginScript.sh](#-myloginscriptsh)
  - [🤖 donTYPE.sh](#-dontypesh)
  - [🔤 mooCASE.sh](#-changecasesh)
- [🚀 Getting Started](#-getting-started)
- [🌕 Notes](#-notes)
- [🛸 License](#-license)
- [🪐 Recruiter's Note](#-recruiters-note)
- [👽 Contact](#-contact)

## 🔭 Overview

This repository is a collection of Bash scripts I use to automate and streamline my Linux workflow. Each script is self‑contained, documented, and easy to adapt. Think of it as both a personal toolkit and a demonstration of my ability to write practical, maintainable automation.

## 🗺️ Scripts Included

### 🐧 **NEWbara.sh**

[![Bash](https://img.shields.io/badge/Shell-Bash-bd93f9?logo=gnu-bash&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://www.gnu.org/software/bash/)
[![DNF](https://img.shields.io/badge/Package-dnf-bd93f9?logo=fedora&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://docs.fedoraproject.org/en-US/quick-docs/dnf/)
[![Flatpak](https://img.shields.io/badge/Flatpak-Installer-bd93f9?logo=flatpak&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://flatpak.org/)
[![Snap](https://img.shields.io/badge/Snap-Packages-bd93f9?logo=snapcraft&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://snapcraft.io/)

- **Purpose:** Comprehensive system bootstrapper for Nobara/Fedora with multi-package manager support and advanced features.
- **Summary:** A powerful script that installs packages via DNF (system packages), Flatpak (user/system apps), and Snap (universal packages). Supports custom package lists, dry-run mode for safe testing, automatic logging, and smart cleanup of orphaned packages.
- **Key Features:**
  - Multi-package manager support (DNF + Flatpak + Snap)
  - Custom package list loading from text files
  - Dry-run mode to preview installations without changes
  - Automatic timestamped logging for troubleshooting
  - User/system Flatpak installation modes
  - Smart cleanup of orphaned packages and runtimes
- **Dependencies:** `dnf`, `flatpak`, `snap`, `sudo`.
- **Use Case:** Complete system setup automation for fresh Nobara/Fedora installations with advanced configuration options.  

---

### ☁️ **mountMyCloudDrives.sh**

[![Bash](https://img.shields.io/badge/Shell-Bash-bd93f9?logo=gnu-bash&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://www.gnu.org/software/bash/)
[![Rclone](https://img.shields.io/badge/Cloud-rclone-bd93f9?logo=icloud&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://rclone.org/)
[![xcowsay](https://img.shields.io/badge/Fun-xcowsay-bd93f9?style=for-the-badge&labelColor=6272a4)](https://github.com/nickg/xcowsay)

- **Purpose:** Mounts multiple cloud storage accounts locally.  
- **Summary:** Creates directories for OneDrive, Google Drive, and Dropbox, mounts them via `rclone`, verifies with `findmnt`, and reports success/failure with `xcowsay`.  
- **Dependencies:** `rclone`, `xcowsay`.  
- **Use Case:** Automates cloud drive access at login with playful feedback.  

---

### 🌈 **myLoginScript.sh**

[![Bash](https://img.shields.io/badge/Shell-Bash-bd93f9?logo=gnu-bash&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://www.gnu.org/software/bash/)
[![OpenRGB](https://img.shields.io/badge/RGB-OpenRGB-bd93f9?style=for-the-badge&labelColor=6272a4)](https://openrgb.org/)
[![xcowsay](https://img.shields.io/badge/Fun-xcowsay-bd93f9?style=for-the-badge&labelColor=6272a4)](https://github.com/nickg/xcowsay)

- **Purpose:** Adds polish and fun to login.  
- **Summary:** Loads my OpenRGB profile (`Home`) and displays a fortune message with `xcowsay`.  
- **Dependencies:** `openrgb`, `xcowsay`.  
- **Use Case:** Ensures consistent RGB setup and a lighthearted greeting every session.  

---

### 🤖 **donTYPE.sh**

[![Bash](https://img.shields.io/badge/Shell-Bash-bd93f9?logo=gnu-bash&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://www.gnu.org/software/bash/)
[![xdotool](https://img.shields.io/badge/Automation-xdotool-bd93f9?style=for-the-badge&labelColor=6272a4)](https://github.com/jordansissel/xdotool)

- **Purpose:** Automates in-game keybinding setup for *Schedule I* with enhanced reliability.
- **Summary:** Uses `xdotool` to automatically type and bind teleport locations, inventory management, and utility commands to function keys (F1-F12). Includes dependency validation, progress feedback, and robust error handling for reliable execution.
- **Key Features:**
  - Automated keybinding for teleport locations (motel room, sweatshop, storage unit, etc.)
  - Inventory management commands (clear trash, clear inventory)
  - Balance manipulation commands (change balance)
  - Dependency validation with helpful error messages
  - Real-time progress feedback with countdown timer
  - Error handling and recovery (continues on individual binding failures)
  - Robust execution with cleanup traps and modular code structure
  - Optimized timing for faster setup completion
  - Non-interactive execution for gaming efficiency
- **Dependencies:** `xdotool`.
- **Use Case:** Eliminates manual command typing during gameplay, completing setup in ~20 seconds instead of several minutes of manual input with built-in error recovery and user feedback.

---

### 🔤 **mooCASE.sh**

[![Bash](https://img.shields.io/badge/Shell-Bash-bd93f9?logo=gnu-bash&logoColor=white&style=for-the-badge&labelColor=6272a4)](https://www.gnu.org/software/bash/)

- **Purpose:** Batch rename directories and files by changing the case of their first character.
- **Summary:** A utility script that converts the first character of directory and file names to lowercase, with support for custom path targeting and filtering options.
- **Key Features:**
  - Automatic case conversion (first character to lowercase)
  - Command-line options for custom paths (`-p`)
  - Filtering by directory (`-d`) or file (`-f`) types
  - Safe operation with verbose output
  - Non-destructive (only renames when changes are needed)
- **Dependencies:** None (uses built-in Bash and standard Unix tools).
- **Use Case:** Quickly standardize file and directory naming conventions across large collections of files, particularly useful for organizing media libraries or codebases with inconsistent naming.

## 🚀 Blasting Off

### Prerequisites

- **Operating System:** Linux distribution (tested on Nobara/Fedora)
- **Shell:** Bash (most Linux distributions include this by default)
- **Permissions:** Ability to run `sudo` for system-level operations

### Installation

1. **Clone the repository:**

   ```sh
   git clone https://github.com/TheOnliestMattastic/My-Bash-Toolkit.git
   cd My-Bash-Toolkit
   ```

2. **Make scripts executable:**

   ```sh
   # For all scripts at once
   chmod +x scripts/*/*.sh

   # Or for individual scripts
   chmod +x scripts/NEWbara/NEWbara.sh
   chmod +x scripts/mountMyCloudDrives/mountMyCloudDrives.sh
   # ... etc
   ```

3. **Run any script:**

   ```sh
   ./scripts/scriptName/scriptName.sh [options]
   ```

### Script-Specific Setup

Each script includes detailed setup instructions in its header comments. Here are the key requirements:

- **NEWbara.sh:** Requires `dnf`, `flatpak`, `snap`, and `sudo` access
- **mountMyCloudDrives.sh:** Requires `rclone` configured with cloud remotes and `xcowsay`
- **myLoginScript.sh:** Requires `openrgb` and `xcowsay`
- **donTYPE.sh:** Requires `xdotool` for automation
- **mooCASE.sh:** No external dependencies (uses built-in tools)

### Configuration

Most scripts support customization through:

- Command-line options (see `--help` for each script)
- Configuration files (NEWbara.sh supports custom package lists)
- Environment variables
- Direct script editing for personal preferences

## 🌕 Notes

### Compatibility & Customization

- **Personal Setup:** These scripts were written for my personal Nobara workflow, so you may need to adjust paths, package lists, or configurations for your environment.
- **Linux Focus:** Designed primarily for Linux systems with systemd, DNF, and common package managers. May require adaptation for other distributions.
- **Version Dependencies:** Some scripts depend on specific tool versions (e.g., rclone remotes, OpenRGB profiles).

### Script Architecture

- **Self-Contained:** Each script is designed to be standalone with minimal external dependencies.
- **Error Handling:** Scripts include basic error checking and user feedback.
- **Logging:** Most scripts create timestamped log files for troubleshooting.
- **Non-Destructive:** Scripts avoid overwriting existing configurations without confirmation.

### Security Considerations

- **Sudo Usage:** Some scripts require `sudo` access - review what they're doing before running.
- **Network Operations:** Scripts like NEWbara.sh download packages from repositories.
- **File Permissions:** Scripts may create directories and modify file permissions.

### Contributing

- **Welcome Contributions:** Issues, feature requests, and pull requests are encouraged.
- **Fork Friendly:** Feel free to fork and adapt for your own needs.
- **Documentation:** All scripts include comprehensive header documentation.

### Future Development

- **Modular Design:** Scripts are built to be easily extended or modified.
- **Configuration Files:** Moving toward external configuration files for easier customization.
- **Cross-Platform:** Potential for adaptation to other Unix-like systems.  

## 🛸 License

This project is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.html).

## 🪐 Recruiter’s Note

This repository serves as a comprehensive portfolio piece demonstrating practical software development and system administration skills. While not a commercial product, it showcases:

### Technical Skills Demonstrated

- **Bash Scripting Expertise:** Advanced shell scripting with error handling, logging, and user interaction
- **Linux System Administration:** Package management (DNF, Flatpak, Snap), service configuration, and automation
- **Cross-Tool Integration:** Coordinating multiple utilities (rclone, OpenRGB, xdotool) into cohesive workflows
- **Documentation Practices:** Comprehensive inline documentation, READMEs, and user-friendly interfaces
- **Problem-Solving Approach:** Identifying repetitive tasks and creating automated solutions

### Professional Qualities

- **Self-Directed Learning:** Researching and implementing tools like rclone, OpenRGB, and various package managers
- **Attention to Detail:** Comprehensive error handling, user feedback, and safety checks
- **User Experience Focus:** Creating scripts that are both powerful and easy to use
- **Maintainability:** Clean, commented code that can be easily modified and extended
- **Adaptability:** Scripts designed to work across different configurations and use cases

### Development Process

- **Iterative Improvement:** Scripts evolved from simple solutions to robust, feature-rich tools
- **Testing & Debugging:** Real-world testing leading to improved error handling  
- **User-Centered Design:** Scripts include help systems, validation, and clear success/failure indicators
- **Version Control:** Proper Git usage with meaningful commit messages and repository organization

This toolkit reflects the same methodical, user-focused approach I bring to IT support, system administration, and software development roles.  

## 👽 Contact

Curious about my projects? Want to collaborate or hire for entry-level IT/support/dev roles? Shoot me an email or connect on GitHub—I reply quickly and love new challenges.

[![Portfolio](https://img.shields.io/badge/Portfolio-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/)
[![GitHub](https://img.shields.io/badge/GitHub-Profile-bd93f9?style=for-the-badge&logo=github&logoColor=white&labelColor=6272a4)](https://github.com/theonliestmattastic)
[![Email](https://img.shields.io/badge/Email-matthew.poole485%40gmail.com-bd93f9?style=for-the-badge&logo=gmail&logoColor=white&labelColor=6272a4)](mailto:matthew.poole485@gmail.com)

> *“Sometimes the questions are complicated and the answers are simple.”* — Dr. Seuss
