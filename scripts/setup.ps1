Write-Host "Setting up environment"

$targetPath = "$home\.env-config"
Write-Host "Creating directory for settings / resources: $targetPath"


If(!(test-path $targetPath))
{
      New-Item -ItemType Directory -Force -Path $targetPath
}

& "$PSScriptRoot\install-requirements.ps1"
& "$PSScriptRoot\install-fonts.ps1"
# & "$PSScriptRoot\initialize-shell.ps1"