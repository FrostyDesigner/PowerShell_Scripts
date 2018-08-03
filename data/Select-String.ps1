#This project allows the user to define either a folder or file to search
#Edit the $searchFolder or $searchFile as object to search
#Edit the $string as the pbject you are looking for.

$searchFolder = "C:\Users\Robert.Hale\Documents\WindowsPowerShell"
$searchFile = "C:\Projects\2018\AtlasAerospace\EntryData.ps1"
$string = "top"
#$string = "#original"

#look in single file for matches
#Select-String is case insensitive by default
#Use the -CaseSensitive parameter (abbreviated to -ca)
#Select-String $string $file -ca
#Select-String "ParsedHtml.body.getElementsByClassName" $file -ca
#Select-String "ParsedHtml.body.getElementsByClassName" $file -ca | Select-Object -exp line


#Searching in all files recursively
#Select-String is made to work with objects
#you can simply pipe the results of Get-ChildItem into it and it will search through all the files it gets from the previous command:
Get-ChildItem $searchFolder-r | Select-String $string | ForEach-Object {"$($_.filename):$($_.line)"}