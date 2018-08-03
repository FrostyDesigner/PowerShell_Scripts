#This project uses PowerShell to Robocopy an installation file from a source location on a netowrk server to a local install location.
#this application requires 2 inputs from the user.
#copy latest version of custom programming to a working directory
#the last n folders of the custom program are replicated to the working directory

param(
[Parameter(Mandatory=$true)]
$source = $args[0],
[Parameter(Mandatory=$true)]
$version = $args[1]
)

#$source = "O:\AerotechDevelopment\Applications\Aerotech_13.1\CP\DataExtraction\QA"
#$version = "1022"

#split the last n folders out to replicate in our working directory
#$replicate = ($source -split '\\' | Select-Object -last 3 ) -join '\'
$replicate = ($source -split '\\' | Select-Object -last 2 ) -join '\'

#below works but you have to manually change it for each project
#$workDirectory = "C:\Users\Robert.Hale\Documents\Projects\2018\Mid-South"

#set work directory to the containing folder
$workDirectory = $PSScriptRoot

$destination = "{0}\{1}_{2}" -f $workDirectory, $replicate, $version

robocopy $source $destination /mir /z /r:2 /w:1 /mt:4

Invoke-Item $destination