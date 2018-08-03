#### Below works as a way to substitute the file in the below configuration

#$myFile = '"C:\Users\Robert.Hale\Documents\Projects\2018\Adept2018TP\Scripts\Download A2018 All.ps1"'

param(
[Parameter(Mandatory=$true)]
$myFile = $args[0]
)

$argument1 = '-NoProfile -ExecutionPolicy Unrestricted -File '
$arguments = $argument1, $myFile

Start-Process Powershell -Verb runAs -Wait -ArgumentList $arguments

#The working codebelow is what above is trying to replicate
#Start-Process Powershell -Verb runAs -Wait -ArgumentList '-NoProfile -ExecutionPolicy Unrestricted -File "C:\Users\Robert.Hale\Documents\Projects\2018\Adept2018TP\Scripts\Download A2018 All.ps1"'

#"C:\Users\Robert.Hale\Documents\Projects\2018\Adept2018TP\Scripts\DownloadA2018All.ps1"

#"C:\Users\Robert.Hale\Desktop\StartMyApps.ps1"

#"C:\Users\Robert.Hale\Desktop\RobocopyBackup.ps1"

#"C:\Users\Robert.Hale\Documents\Projects\2018\Adept2018TP\Scripts\RunWithProvidedFile.ps1"