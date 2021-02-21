
#https://docs.microsoft.com/en-us/windows/apps/get-started/enable-your-device-for-development

Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force

#Install Git
# get latest download url for git-for-windows 64-bit exe


Install-Module posh-git -Scope CurrentUser -Force
#reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"PS C:\WINDOWS\system32> reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
Install-Module oh-my-posh -Scope CurrentUser
Get-PoshThemes
Set-PoshPrompt -Theme ~\Documents\Github\environment\.mikeev.minimal.omp.json

Copy-Item "settings.json" -Destination "$env:APPDATA\..\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
Copy-Item ".mikeev.minimal.omp.json" -Destination "~\.mikeev.minimal.omp.json"

$current = Get-Location
$nerdfile = "Hasklig.zip"
$url_nerd = "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/$nerdfile"
$tmp_dir = "$current/tmp"

mkdir $tmp_dir
Invoke-WebRequest -Uri $url_nerd -OutFile $tmp_dir/$nerdfile
Expand-Archive -Path $tmp_dir/$nerdfile
Invoke-Expression ".\install_fonts.ps1 $tmp_dir/$nerdfile"