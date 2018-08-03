#this project is to open a csv file and export the contents to a grid view.
#doing this because the data is too large to open in Excel
#you can also export first n rows to another csv to figure out the formatting

$importFile = "C:\Users\Robert.Hale\Downloads\Crimes_-_2001_to_present.csv"
$importFile = "C:\Users\Robert.Hale\Downloads\Crimes_-_2001_to_present_Exported.csv"
$exportFile = "C:\Users\Robert.Hale\Downloads\Crimes_-_2001_to_present_Exported.csv"
#return results from first row

Import-Csv -Path $importFile | Select-Object -First 1

#works for numeric values
Import-Csv -Path $importFile | Measure-Object -Property ID -Minimum -Maximum -Average

#works for strings
Import-Csv -Path $importFile | Measure-Object -Property Block -Line -Word -Character

#select just one column
Import-Csv -Path $importFile | Select-Object -Property Block 

#get string properties of one column
Import-Csv -Path $importFile | Select-Object -Property Block | Measure-Object -Property Block -Line -Word -Character

#export to csv
Import-Csv -Path $importFile | Select-Object -First 100000 | Export-Csv $exportFile -NoTypeInformation

#export to gridview
Import-Csv -Path $importFile | Out-GridView 