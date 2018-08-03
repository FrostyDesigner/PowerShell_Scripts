#this project is to open a csv file and export the contents to a grid view.
#doing this because the data is too large to open in Excel

$importFile = "C:\Users\Robert.Hale\Documents\Projects\2018\Alyeska\Report.csv"


Import-Csv -Path $importFile | Select-Object 


Import-Csv -Path $importFile | Out-GridView 