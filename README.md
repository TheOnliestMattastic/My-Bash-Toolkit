# 🧰 The One & Onliest Mattastic's Bash Toolkit

A curated collection of scripts for Nobara/Fedora users - designed to simplify clean installs and workflow automation.

### Table of Contents

- [installFlatpakAndDnf](#-installflatpakanddnf)
- [mountMyOneDrive](#-mountmyonedrive)
- [scheduleIcheats](#-scheduleicheats)

---

### 📦 installFlatpakAndDnf

Installs system packages and flatpaks for a clean Nobara/Fedora setup.

**How to use**:
```bash
chmod +x installFlatpakAndDnf.sh
./installFlatpakAndDnf.sh  # Run as regular user (not sudo!)
```

**Configuration**: Edit `DNF_PKGS` and `FLAT_PKGS` arrays in the script.

⚠️ **Critical**: Do *not* run with `sudo` - this script installs flatpaks for your user account (as recommend in the [Nobara Project Wiki](https://wiki.nobaraproject.org/en/new-user-guide-general-guidelines))

---

### 🚚 mountMyOneDrive

Automatically mounts OneDrive via rclone with visual confirmation.

**How to use**:
1. Configure rclone with OneDrive remote
2. Set as login script in system settings for automatic execution

⚠️ **Must**: Existing directories must be empty before running

---

### 🎮 scheduleIcheats

Pre-configured cheat commands for Schedule I game via keyboard.

**How to use**:
1. Install `xdotool`
2. Set as keyboard shortcut via system settings
3. ⚠️ Do not touch keyboard during execution

> *This script inputs game commands automatically - requires no user interaction.*

---

### 💡 Why these scripts?

| Problem | Solution | Script |
|---------|-----------|--------|
| Reinstalling packages after clean install | `installFlatpakAndDnf` | ✅ |
| OneDrive mounting failures | `mountingMyOneDrive` | ✅ |
| Manual cheat codes | `scheduleIcheats` | ✅ |

---

### License & Contributing

- All scripts licensed under **CCO** ([LICENSE](LICENSE) file)
- Forks and PRs welcome!
