Write-Host "Setting up environment"

& "$PSScriptRoot\install-requirements.ps1"
& "$PSScriptRoot\install-fonts.ps1"
& "$PSScriptRoot\initialize-shell.ps1"