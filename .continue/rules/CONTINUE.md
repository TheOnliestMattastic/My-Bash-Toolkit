# Project Guide: My Bash Toolkit

## 1. Project Overview

My Bash Toolkit is a collection of Bash scripts designed to automate and streamline tasks on Linux systems. It includes scripts for installing packages, mounting cloud drives, customizing the login process, and automating in-game keybindings.

**Key Technologies:**

- Bash scripting
- Linux command-line tools (e.g., `rclone`, `xdotool`, `dnf`, `flatpak`)

**Architecture:**
The project consists of individual, self-contained Bash scripts. Each script is designed to perform a specific task and can be executed independently.

## 2. Getting Started

**Prerequisites:**

- A Linux-based operating system
- Bash shell
- Required tools for individual scripts (see script headers for dependencies)

**Installation:**

1. Clone the repository:

   ```bash
   git clone https://github.com/TheOnliestMattastic/My-Bash-Toolkit.git
   cd My-Bash-Toolkit
   ```

**Basic Usage:**

1. Make a script executable:

   ```bash
   chmod +x script-name.sh
   ```

2. Run the script:

   ```bash
   ./script-name.sh
   ```

   (Replace `script-name.sh` with the actual script name)

**Running Tests:**
*This project doesn't have formal tests.* Testing is done through manual execution and verification of the script's output.

## 3. Project Structure

**Main Directories:**

- `.continue/rules/`: This directory contains the `CONTINUE.md` project guide.
- `scripts/`: Contains subdirectories of bash scripts

**Key Files:**

- `index.html`: Main HTML file for the project's website.
- `style.css`: CSS file for styling the project's website.
- `README.md`: Provides an overview of the project and instructions for getting started.
- `.gitignore`: Specifies intentionally untracked files that Git should ignore.
- `LICENSE`: Contains the license information for the project.

**Important Configuration Files:**
*This project does not have dedicated configuration files.* Each script typically contains any necessary configuration within the script itself.

## 4. Development Workflow

**Coding Standards:**

- Follow standard Bash scripting practices.
- Use meaningful variable names.
- Add comments to explain complex logic.
- Keep scripts self-contained and modular.

**Testing Approach:**

- Manually test scripts after making changes.
- Verify the script's output and ensure it produces the expected results.

**Build and Deployment Process:**
*This project does not have a formal build or deployment process.* The scripts are designed to be executed directly on a Linux system.

**Contribution Guidelines:**

1. Fork the repository.
2. Create a new branch for your changes.
3. Make your changes and commit them with descriptive commit messages.
4. Submit a pull request.

## 5. Key Concepts

**Core Abstractions:**

- Automation of tasks using Bash scripting
- Use of command-line tools to perform specific operations

**Design Patterns Used:**
*This project primarily uses simple, procedural scripting.* There are no specific design patterns employed.

## 6. Common Tasks

**Adding a New Script:**

1. Create a new Bash script file.
2. Add the script to the repository.
3. Update the `README.md` file with information about the new script.

**Modifying an Existing Script:**

1. Edit the script file.
2. Test the changes thoroughly.
3. Commit the changes with a descriptive commit message.

## 7. Troubleshooting

**Common Issues:**

- Script fails to execute due to missing dependencies.
  - Solution: Install the required dependencies.
- Script produces unexpected output.
  - Solution: Debug the script and identify the cause of the error.

**Debugging Tips:**

- Use the `set -x` command to trace the execution of a script.
- Add `echo` statements to display the values of variables.

## 8. References

- [Bash Scripting Tutorial](https://www.shellscript.sh/)
- [Rclone Documentation](https://rclone.org/)
- [Xdotool Documentation](https://github.com/jordansissel/xdotool)
- [DNF Documentation](https://docs.fedoraproject.org/en-US/quick-docs/dnf/)
- [Flatpak Documentation](https://flatpak.org/)
