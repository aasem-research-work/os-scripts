echo "To Disable Hyper-V"
pause
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Script must be run as administrator"
	pause
    exit
}

Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All
pause
