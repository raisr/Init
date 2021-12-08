# Ensure requirements

# winget package manager

$wingetUrl = 'https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'

if ($null -eq (Get-Command "winget.exe" -ErrorAction SilentlyContinue)) 
{ 
   Write-Host 'Installing latest version of winget. See https://github.com/microsoft/winget-cli/'   
   $outPath = Join-Path -Path $([System.IO.Path]::GetTempPath()) -ChildPath $(Split-Path -Path $wingetUrl -Leaf)
   invoke-WebRequest -Uri $wingetUrl -OutFile $outPath

   Add-AppxPackage $outPath
}
else {
   Write-Host "Winget already installed"
}