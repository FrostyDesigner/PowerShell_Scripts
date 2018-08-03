#This project imports data from a csv and truncates a troublesome column to a selected length
#Column sequence and data types should match
#Column names can be called specifically or labeled on the fly

$inputFile = "C:\Projects\2018\AerospaceDefense\Structural\Structural_Data.txt"
$exportFile = "C:\Projects\2018\AerospaceDefense\Structural\Structural_Data.csv"

# Import the file with the proper delimiter and dummy headings
# can use real column names or c<n> 
#(Import-Csv $inputFile -Delimiter "`t" -header dwroi, seq, siteoi, Descr, filename, ext, document, added_by_userid, added_date_time) |
(Import-Csv $inputFile -Delimiter "`t" -header c1, c2, c3, c4, c5, c6, c7, c8, c9) |
  # Truncate the nth column.
  # $_. is powershell for current object
  ForEach-Object { $_.c7 = $_.c7 -replace '(?<=^.{50}).*'; $_ } |  
  #Select -Skip 1 |
  Export-Csv -Delimiter "`t" -Path $exportFile -NoTypeInformation

Write-Output "Finished."