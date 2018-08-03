# import a csv and truncate it's data

$foo = "C:\Users\Robert.Hale\Documents\Projects\2018\Entergy\From Entergy\T_TRACS_DOC.txt"
$bar = "C:\Users\Robert.Hale\Documents\Projects\2018\Entergy\From Entergy\T_TRACS_DOC.csv"

# Import the file with the proper delimiter and dummy headings
#(Import-Csv $foo -Delimiter "`t" -header dwroi, seq, siteoi, Descr, filename, ext, document, added_by_userid, added_date_time) |
(Import-Csv $foo -Delimiter "`t" -header c1, c2, c3, c4, c5, c6, c7, c8, c9) |
  # Truncate the nth column.
  ForEach-Object { $_.c7 = $_.c7 -replace '(?<=^.{50}).*'; $_ } |  
  #Select -Skip 1 |
  Export-Csv -Delimiter "," -Path $bar -NoTypeInformation

Write-Output "Finished."
