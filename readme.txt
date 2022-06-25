# Enable scripts on window 10
powershell
get-ExecutionPolicy
set-ExecutionPolicy Unrestricted

# Notes
- Project is built by mobirise app
- If add-audioplayer script was already applied, you need to update index.html directly

# Run this from terminal to apply new changes to production site
./update-site.ps1