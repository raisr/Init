# Setup shells / terminal

Write-Host "Installing Microsoft Powershell"
winget install Microsoft.Powershell

Write-Host "Installing Windows Terminal"
winget install Microsoft.WindowsTerminal

Write-Host "Installing git posh"
winget install JanDeDobbeleer.OhMyPosh


# #
# # See https://ohmyposh.dev/

# Write-Host "Setting up git posh"

# Write-Host "Copying profile and theme"
# Copy-Item -Path "..\resources\ohmyposh\Microsoft.Powershell_profile.ps1" -Destination "$env:USERPROFILE\documents\WindowsPowerShell\" -Force -Verbose
# Copy-Item -Path "..\resources\ohmyposh\jandedobbeleer.omp.json" -Destination "$env:USERPROFILE\" -Force -Verbose

# # Reload profile
# . $PROFILE