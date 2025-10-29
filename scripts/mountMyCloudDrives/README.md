# mountMyCloudDrives

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

A Bash script to mount cloud drives (OneDrive, GoogleDrive, Dropbox) using rclone.

## Prerequisites

- **rclone** must be installed and configured with remotes named `OneDrive`, `GoogleDrive`, and `Dropbox`.
- Local mount directories must be empty or non-existent (the script creates them if needed).
- Required system commands: `findmnt`, `xcowsay`.

## Installation

1. Ensure the script is executable:

   ```bash
   chmod +x mountMyCloudDrives.sh
   ```

## Usage

Run the script directly:

```bash
./mountMyCloudDrives.sh
```

### Optional: Run at Login

For convenience, configure the script to run at login by placing it in your autostart directory (e.g., `~/.config/autostart-scripts/`) or through system settings.

## How It Works

1. Checks for required commands (`rclone`, `findmnt`, `xcowsay`).
2. Defines mount directories:
   - OneDrive: `/home/mattastic/OneDrive`
   - GoogleDrive: `/home/mattastic/GoogleDrive`
   - Dropbox: `/home/mattastic/Dropbox`
3. Creates directories if they don't exist.
4. Mounts each drive in the background using `rclone --vfs-cache-mode full`.
5. Waits 60 seconds for mounts to establish.
6. Verifies mounts using `findmnt`.
7. Notifies via `xcowsay` (cow-themed messages) about success or failures.

## Notifications

- **Success**: "Mooooooo!: OneDrive, GoogleDrive, and Dropbox successfully mounted!"
- **Partial Failure**: Lists which drives failed.
- **Total Failure**: "I am Error: All drives failed to connect!"

## Error Handling

- Exits on errors or undefined variables (`set -eu`).
- Cleans up background rclone processes on exit via trap.
- Prevents zombie processes.

## Troubleshooting

- Ensure rclone is properly configured with the exact remote names.
- Check that mount directories are writable and not already in use.
- Verify required commands are installed.
- If mounts fail, check rclone logs or run manually to debug.
