$dotNET = @(Get-ChildItem "HKLM:SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\" | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge 461814 })
$critical = 2
if ($dotNET -Match "True") {
  write-host "Version is Installed." 
} else {
  write-host "Version Not Installed."
  exit $critical
}
