#for params based on the args array use this:
$runFile = $args[0]
$serverName = $args[1]
$location = $args[2]

#for required parameters use this:
<#
param(
[Parameter(Mandatory=$true)]
$runFile = $args[0],
[Parameter(Mandatory=$true)]
$serverName = $args[1],
[Parameter(Mandatory=$true)]
$location = $args[2]
)
#>

Write-Output "Run file: $runFile"
Write-Output "Server Name: $serverName"
Write-Output "Location: $location"
