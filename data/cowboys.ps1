
$url = "http://www.dallascowboys.com/team/statistics"

#get raw data from website
$foozball = Invoke-WebRequest -Uri $url 

#return some daters
$foozball.Content

$foozball.AllElements

$foozball.ParsedHtml

$foozball.ParsedHtml.getElementById('team-stats')

$foozball.ParsedHtml.body.getElementsByClassName('team-stats-wrapper')

$foozball.ParsedHtml.body.getElementsByClassName('team-stats-wrapper') | Select-Object -Property textContent

$foozball.ParsedHtml.body.getElementsByClassName('team-stats-wrapper') | Select-Object -Property innerText

$foozball.ParsedHtml.body.getElementsByClassName('team-stats-wrapper') | Select-Object -Property outerText

$foozball.ParsedHtml.body.getElementsByClassName('team-stats-wrapper') | Select-Object -Property innerHTML

$foozball.ParsedHtml.body.getElementsByClassName('team-stats-wrapper') | Select-Object -Property outerHTML

$foozball.ParsedHtml.body.getElementsByClassName('team-stats-wrapper') | Where-Object -Property innerHTML -Like '*<H4>Receiving</H4>*'

$foozball.ParsedHtml.body.getElementsByClassName('team-stats-wrapper') | Where-Object -Property innerHTML -Like '*<H4>Defense</H4>*'

$foozball.ParsedHtml.body.getElementsByClassName('team-stats-wrapper') | Where-Object -Property innerHTML -Like '*<H4>Defense</H4>*' | Select-Object innerHTML

$statz = $foozball.ParsedHtml.body.getElementsByClassName('team-stats-wrapper') | Where-Object -Property innerHTML -Like '*<H4>Defense</H4>*' | Select-Object innerHTML

$foozball.AllElements | Where-Object {$_.InnerHtml -like "*<H4>Defense</H4>*"} 

$statz.innerHTML

$statz.innerHTML | Tee-Object -FilePath 'C:\ProgramData\MLB\Tee-Object.txt' 

$statz.innerHTML | ConvertTo-Xml | Out-GridView


<#
#now that $resp is an object, you can use the "dot" method on it
$resp.stats_sortable_player

#now use the "dot" method on the stats_sortable_player
$resp.stats_sortable_player.queryResults

#"dot" on that...
$resp.stats_sortable_player.queryResults.row[2]

# to get the third player in the list
$resp.stats_sortable_player.queryResults.row[2]

#now you have all the data as JSON objects

#show in command window
$resp.stats_sortable_player.queryResults.row | Format-Table -AutoSize

#select only the columns you want
$resp.stats_sortable_player.queryResults.row | Select-Object -Property name_display_first_last, jersey_number, avg, rbi, h, d, t, slam

#select only the columns you want from a favorite player
$resp.stats_sortable_player.queryResults.row | Select-Object -Property name_display_first_last, jersey_number, avg, rbi, h, d, t, slam | Where-Object -Property jersey_number -EQ 37

#select only the columns you want from a good hitters
$resp.stats_sortable_player.queryResults.row | Select-Object -Property name_display_first_last, jersey_number, avg, rbi, h, d, t, slam | Where-Object -Property h -GT 20

#select only the columns you want from grand slammers
$resp.stats_sortable_player.queryResults.row | Select-Object -Property name_display_first_last, jersey_number, avg, rbi, h, d, t, slam | Where-Object -Property slam -GT 0

#export to json
$resp.stats_sortable_player.queryResults.row | ConvertTo-Json |Out-File  'C:\ProgramData\MLB\Phillies.json'

#export to csv
$resp.stats_sortable_player.queryResults.row | Export-Csv 'C:\ProgramData\MLB\Phillies2Excel.csv' -NoTypeInformation -Delimiter "`t"
$resp.stats_sortable_player.queryResults.row | Export-Csv 'C:\ProgramData\MLB\Phillies2SQL.csv' -NoTypeInformation -Delimiter ","

#$Test = Get-Content .\TEST.csv
#$Test.Replace('","',",").TrimStart('"').TrimEnd('"') | Out-File .\TEST.csv -Force -Confirm:$false
#$Test = Get-Content 'C:\ProgramData\MLB\Phillies.csv'
#$Test.Replace('","',",").TrimStart('"').TrimEnd('"') | Out-File 'C:\ProgramData\MLB\Phillies_trimmed.csv' -Force -Confirm:$false
#$Test.Replace('"`t"',"`t").TrimStart('"').TrimEnd('"') | Out-File 'C:\ProgramData\MLB\Phillies_trimmed.csv' -Force -Confirm:$false

$resp.stats_sortable_player.queryResults.row | ConvertTo-Html | Out-File -FilePath 'C:\ProgramData\MLB\Phillies.html'

$resp.stats_sortable_player.queryResults.row | Export-Clixml -Path 'C:\ProgramData\MLB\Phillies.xml'

$resp.stats_sortable_player.queryResults.row | Out-GridView -Title 'Phillies Baseball!'

#pause blue screen for user input
#$HOST.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") | OUT-NULL
#$HOST.UI.RawUI.Flushinputbuffer()

#open an excel file and refresh the data
#todo - run silently and answer prompt for source file
$app = New-Object -comobject Excel.Application
$app.Visible = $True
$wb = $app.Workbooks.Open("C:\ProgramData\MLB\Phillies.xlsx")
$wb.Name
$wb.RefreshAll()
#$wb.RefreshAll()
$wb.Save()
$wb.Close()
$app.Quit()

#use bulk copy to add to database
#Read csv file 
#open connection to database using bulkcopy
#convert array to data table
#bulkload data into table
#note: table should exist
#note: column sequence and data types should match
bcp [Entergy].[dbo].[Phillies2Excel] IN "C:\ProgramData\MLB\Phillies2Excel.csv" -c -T -F2


#original

#>