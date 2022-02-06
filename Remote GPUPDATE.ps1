$PSLocation = "FILE.LOCATION.EXAMPLE\PsExec.exe"
$Date = Get-Date

$Computer = Read-Host -Prompt "Enter Remote Device Name or IP Address"
$User = Read-Host -Prompt "Local Admin username? (i.e LAPS Administrator or Administrateur)"
cls
$Password = Read-Host -Prompt "Input Device LAPS Password"
cls
Write-Host "You input device '$Computer' on '$Date'"
Write-Host "COE - Scripted By Joel S."
Write-Host "Please wait... Processing commands."
Start-Sleep 1
& $PSLocation /i /h \\$Computer -u $User -p $Password gpupdate /force
Read-Host -Prompt "Press 'Enter' to exit"
