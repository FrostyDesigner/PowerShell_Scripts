#directory scan

Get-ChildItem "C:\!Source" *.* -Recurse | 
Select-Object fullname,name,extension,*time | 
Export-Csv -Path 'C:\Users\Robert.Hale\Documents\Projects\2018\Entergy\From Entergy\scripts.csv' -Delimiter "`t" -NoTypeInformation