# Install fonts

$font = "CascadiaCode"
$fontPath = "$PSScriptRoot\..\resources\fonts\$font\"

Write-Host "Installing font $font"

Write-Host $fontPath

$FONTS = 0x14
$objShell = New-Object -ComObject Shell.Application
$objFolder = $objShell.Namespace($FONTS)
 
$fonts = Get-ChildItem $fontPath -Filter "*.ttf" -Recurse
foreach ($File in $fonts) 
{
   if (!(Test-Path "C:\Windows\Fonts\$File")) 
   {
      $objFolder.CopyHere($File.fullname, 0x10)
   }
}