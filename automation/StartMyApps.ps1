$VPNServer = 'synergvpn.synergis.com'
$computer = $env:computername
$user = $env:username
$userDnsDomain = $env:USERDNSDOMAIN
$userDomain = $env:USERDOMAIN
$password = ConvertTo-SecureString "xxxxxxxxxx" -AsPlainText -Force
#$credentials = New-Object System.Management.Automation.PSCredential -ArgumentList @($user,(ConvertTo-SecureString -String $password -AsPlainText -Force))
$credentials = New-Object System.Management.Automation.PSCredential -ArgumentList @($user, $password)

Start-Process -FilePath "Outlook" -WindowStyle Minimized
Start-Process -FilePath "Pidgin" -WindowStyle Hidden
Start-Process -FilePath "C:\Program Files (x86)\Zoom\bin\Zoom.exe" -WindowStyle Hidden
Start-Process -FilePath "C:\Program Files (x86)\WatchGuard\WatchGuard Mobile VPN with SSL\wgsslvpnc.exe"

# the & sign below is used because the spaces in the file path
$command = ”&’C:\Users\Robert.Hale\Documents\Projects\2018\Adept2018TP\Scripts\Download A2018 All.ps1'"
Invoke-Expression $command