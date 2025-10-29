# 🤖 donTYPE

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

![License](https://img.shields.io/badge/License-GPL--3.0-bd93f9?style=for-the-badge&logo=gnu&logoColor=white&labelColor=6272a4)
[![Live Site](https://img.shields.io/badge/Toolkit-Site-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/My-Bash-Toolkit/)
[![Portfolio](https://img.shields.io/badge/Portfolio-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/)
[![GitHub](https://img.shields.io/badge/GitHub-Profile-bd93f9?style=for-the-badge&logo=github&logoColor=white&labelColor=6272a4)](https://github.com/theonliestmattastic)

## 🔭 Overview

This script automates the setup of in-game keybindings for *Schedule I*, an indie game on Steam. It uses `xdotool` to simulate keyboard input, binding common teleport locations and utility commands to function keys (F1-F12), eliminating the need for manual typing during gameplay.

## 🌟 Features

- **Automated Keybinding**: Binds teleport commands to F1-F9 for quick access to locations like motel room, sweatshop, storage unit, etc.
- **Utility Commands**: Assigns balance manipulation and inventory management to F10-F12.
- **Non-Interactive Execution**: Runs automatically after a 5-second delay, allowing time to switch to the game window.
- **Precise Timing**: Includes delays between commands to ensure proper execution.
- **Gaming Efficiency**: Completes setup in ~30 seconds instead of several minutes of manual input.

## ⚛️ Requirements

- Linux system with X11 (for `xdotool` compatibility).
- `xdotool` installed (`sudo dnf install xdotool` on Fedora/Nobara).

## 🚀 Blasting Off

Clone the repository:

```sh
git clone https://github.com/TheOnliestMattastic/My-Bash-Toolkit.git
cd My-Bash-Toolkit/scripts/donTYPE
```

Make executable and run:

```sh
chmod +x donTYPE.sh
./donTYPE.sh
```

Switch to the game window within 5 seconds.

## 🌠 TODO: Future Features

- [ ] **Configurable Bindings**: Allow custom key-command mappings via config file.
- [ ] **Multi-Game Support**: Extend to other games with console commands.
- [ ] **Window Detection**: Automatically detect and focus game window.
- [ ] **Progress Feedback**: Real-time typing progress indicator.
- [ ] **Error Recovery**: Retry failed commands or pause on interruptions.

## 🔧 Keybindings Set

- **F1**: `~bind f1 teleport motelroom`
- **F2**: `~bind f2 teleport sweatshop`
- **F3**: `~bind f3 teleport storageunit`
- **F4**: `~bind f4 teleport bungalow`
- **F5**: `~bind f5 teleport barn`
- **F6**: `~bind f6 teleport docks`
- **F7**: `~bind f7 teleport laundromat`
- **F8**: `~bind f8 teleport postoffice`
- **F9**: `~bind f9 teleport church`
- **F10**: `~bind f10 changebalance 1000` (Increase bank balance by 1000)
- **F11**: `~bind f11 cleartrash`
- **F12**: `~bind f12 clearinventory`

## 🌌 Contributing

Contributions welcome! Report issues or suggest improvements via GitHub.

## 🌕 Notes

- Ensure the game window is active before the script starts typing.
- NPCs may interrupt if they interact during execution; run in a safe area.
- Customize bindings by editing the script if needed.

## 🛸 License

This project is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.html).

## 🪐 Recruiter's Note

Demonstrates automation scripting, precise timing control, and integration with desktop tools for gaming productivity.

## 👽 Contact

[![Portfolio](https://img.shields.io/badge/Portfolio-Live_Site-bd93f9?style=for-the-badge&logo=githubpages&logoColor=white&labelColor=6272a4)](https://theonliestmattastic.github.io/)
[![Resume](https://img.shields.io/badge/Resume-PDF-bd93f9?style=for-the-badge&logo=adobeacrobatreader&logoColor=white&labelColor=6272a4)](https://raw.githubusercontent.com/theonliestmattastic/theonliestmattastic.github.io/main/assets/docs/resume.pdf)
[![Email](https://img.shields.io/badge/Email-matthew.poole485%40gmail.com-bd93f9?style=for-the-badge&logo=gmail&logoColor=white&labelColor=6272a4)](mailto:matthew.poole485@gmail.com)

> *"Sometimes the questions are complicated and the answers are simple."* — Dr. Seuss