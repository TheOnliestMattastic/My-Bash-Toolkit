# mooCASE Devlog

This devlog provides an overview of the major changes and development history of the `mooCASE.sh` script.

## Initial Version: `changeCase.sh`

2025-10-27

The script was originally named `changeCase.sh`. The first version of the script had the following features:

* **Lowercase Conversion**: It could convert the first letter of a file or directory name to lowercase.
* **File/Directory Selection**: It could be configured to work on either files or directories.
* **Path Selection**: It could be run in a specific directory.

## Refactoring to `mooCASE.sh`

2025-10-29

The script was later refactored and renamed to `mooCASE.sh`. This update brought several improvements:

* **`moo` Function**: A `moo` function was added to provide more engaging and fun user feedback. This function uses `cowsay` and `lolcat` if they are installed, otherwise it prints plain messages.
* **Improved Error Handling**: The script's error handling was improved to provide more descriptive error messages.
* **Logging**: All messages are logged to a `moo.log` file for debugging purposes.
* **Code Refinements**: The code was cleaned up and made more readable.

## Uppercase Conversion

2025-10-29

The most recent update to `mooCASE.sh` added the ability to convert the first letter of a file or directory name to uppercase. This was a significant enhancement, making the script more versatile.

* **`-u` Option**: A `-u` option was added to enable uppercase conversion.
* **Updated Logic**: The script's logic was updated to handle both uppercase and lowercase conversions.
* **Documentation**: The `README.md` file was updated to reflect the new feature.
