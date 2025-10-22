# ___________.__             ________         .__  .__                 __
# \__    ___/|  |__   ____   \_____  \   ____ |  | |__| ____   _______/  |_
#   |    |   |  |  \_/ __ \   /   |   \ /    \|  | |  |/ __ \ /  ___/\   __\
#   |    |   |   Y  \  ___/  /    |    \   |  \  |_|  \  ___/ \___ \  |  |
#   |____|   |___|  /\___  > \_______  /___|  /____/__|\___  >____  > |__|
#                 \/     \/          \/     \/             \/     \/
#    _____          __    __                   __  .__
#   /     \ _____ _/  |__/  |______    _______/  |_|__| ____
#  /  \ /  \\__  \\   __\   __\__  \  /  ___/\   __\  |/ ___\
# /    Y    \/ __ \|  |  |  |  / __ \_\___ \  |  | |  \  \___
# \____|__  (____  /__|  |__| (____  /____  > |__| |__|\___  >
#         \/     \/                \/     \/               \/
#
#                                presents,
#
#                                powerCat:
#                       A single-shot concatenator
# --------------------------------------------------------------------------
# Description:
# Concatenate all .lua, .md, and .sh files in a directory into a single text file.
# Useful for sharing code with LLMs.
#
# How to use this script: 
# `.\powerCat.ps1 -SourceDir "C:\path\to\dir" -OutputFile "C:\path\to\file.txt"
# --------------------------------------------------------------------------
param (
    [Parameter(Mandatory = $true)]
    [Alias("s")]
    [Alias("source")]
    [Alias("dir")]
    [string]$SourceDir,

    [Parameter(Mandatory = $true)]
    [Alias("o")]
    [Alias("out")]
    [Alias("output")]
    [Alias("file")]
    [string]$OutputFile,

    [Alias("r")]
    [Alias("rec")]
    [Alias("recursive")]
    [switch]$Recurse,

    [Alias("m")]
    [Alias("md")]
    [switch]$Markdown,

    [Alias("b")]
    [Alias("sh")]
    [switch]$Bash,

    [Alias("ht")]
    [switch]$HTML,

    [Alias("c")]
    [Alias("cs")]
    [switch]$Css,

    [Alias("p")]
    [Alias("ps")]
    [Alias("ps1")]
    [switch]$Powershell,

    [Alias("e")]
    [string[]]$Extensions = @(".lua", ".md"), # default

    [Alias("h")]
    [switch]$Help
)

# Get all files in the directory 
$Files = foreach ($ext in $Extensions) {
    if ($Recurse) {
        Get-ChildItem -Path $SourceDir -Filter "*$ext" -File -Recurse
    } else {
        Get-ChildItem -Path $SourceDir -Filter "*$ext" -File
    }
}

if ($Files.Count -eq 0) {
    Write-Host "No files matching $ext found in $SourceDir"
    exit
}

# Clear OutputFile to prepare for concatenation
Remove-Item -Path $OutputFile -ErrorAction SilentlyContinue

# Concatenate contents into the output file
# Add a header before each file for clarity
foreach ($file in $Files) {
    Add-Content -Path $OutputFile -Value ("---v--- File: {0} ---v---" -f $file.Name)
    Add-Content -Path $OutputFile -Value ("`n")
    Add-Content -Path $OutputFile -Value ('```{0}' -f $file.Extension.TrimStart('.'))
    Add-Content -Path $OutputFile -Value ("`n")
    Get-Content -Path $file.FullName | Add-Content -Path $OutputFile
    Add-Content -Path $OutputFile -Value ('```')
    Add-Content -Path $OutputFile -Value ("`n")
}

Write-Host "Concatenation complete. Output saved to $OutputFile"