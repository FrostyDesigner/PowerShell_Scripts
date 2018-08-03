#all below work
ipconfig
Get-NetIPConfiguration
Get-NetIPAddress
Get-NetIPAddress | Sort-Object InterfaceIndex | Format-Table InterfaceIndex, InterfaceAlias, AddressFamily, IPAddress, PrefixLength -Autosize
Get-NetIPAddress | Where-Object AddressFamily -eq IPv4 | Format-Table –AutoSize
Get-NetAdapter Wi-Fi | Get-NetIPAddress | Format-Table -AutoSize


ping www.microsoft.com
Test-NetConnection www.microsoft.com
Test-NetConnection -ComputerName www.microsoft.com -InformationLevel Detailed
Test-NetConnection -ComputerName www.microsoft.com | Select-Object -ExpandProperty PingReplyDetails | Format-Table Address, Status, RoundTripTime
1..10 | ForEach-Object { Test-NetConnection -ComputerName www.microsoft.com -RemotePort 80 } | Format-Table -AutoSize

NSLOOKUP
esolve-DnsName www.microsoft.com
Resolve-DnsName microsoft.com -type SOA
Resolve-DnsName microsoft.com -Server 8.8.8.8 –Type A

TRACERT
Test-NetConnection www.microsoft.com –TraceRoute
Test-NetConnection outlook.com -TraceRoute | Select-Object -ExpandProperty TraceRoute | ForEach-Object { Resolve-DnsName $_ -type PTR -ErrorAction SilentlyContinue }

NETSTAT
Get-NetTCPConnection | Group-Object State, RemotePort | Sort-Object Count | Format-Table Count, Name –Autosize
Get-NetTCPConnection | Where-Object State -eq Established | Format-Table –Autosize
Get-NetTCPConnection | Where-Object State -eq Established | Where-Object RemoteAddress -notlike 127* | ForEach-Object { $_; Resolve-DnsName $_.RemoteAddress -type PTR -ErrorAction SilentlyContinue }

#Use PowerShell to check for open port
Test-NetConnection -ComputerName WKST1219 -Port 24000
Test-NetConnection -ComputerName WKST1219 -CommonTCPPort HTTP

(New-Object System.Net.Sockets.TcpClient).Connect('WKST1219', 80)