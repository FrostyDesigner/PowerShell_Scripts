#This project uses PowerShell to scan an existing directory.
#It then uses the results of that scan to create 1k "dummy" files that represent the real file structure.

#create the text files containing the results of a directory scan
$sourceFolder = "C:\!Source"
$readfile = "C:\!Source\DirectoryScan.txt"
#both below has the exact same results
Get-ChildItem $sourceFolder -Recurse -File -Force | Select-Object -ExpandProperty FullName | Out-File $readfile
#Get-ChildItem $path -Recurse -File -Force | ForEach-Object { $_.FullName } | Out-File $readfile

#an array of 50, create a file for each one and add the date as contents
#1..50 | ForEach-Object { New-Item -Path $dest -Name "$_.txt" -Value (Get-Date).toString() }

#read a text file directory scan and create a 1k dummy file for each file inside
$root = "F:\"
$newRoot = "C:\!Destination\"

$files = Get-Content $readfile 
foreach ($file in $files) {
    $newFileName = $file.Replace($root, $newRoot)
    New-Item -Path $newFileName -ItemType file -Force -Value (Get-Date).toString()
}


