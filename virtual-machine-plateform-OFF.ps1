
echo "To Disable Virtual Machine Platform..."
pause
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Script must be run as administrator"
	pause
    exit
}

Disable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
pause
