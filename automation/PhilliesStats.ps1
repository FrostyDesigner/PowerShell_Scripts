Invoke-RestMethod -Uri https://blogs.msdn.microsoft.com/powershell/feed/ |
    Format-Table

#phillies - team_id=143
$uri = "http://mlb.mlb.com/pubajax/wf/flow/stats.splayer?season=2018&sort_order=%27desc%27&sort_column=%27avg%27&stat_type=hitting&page_type=SortablePlayer&team_id=143&game_type=%27R%27&player_pool=ALL&season_type=ANY&sport_code=%27mlb%27&results=1000&recSP=1&recPP=50"
$resp = Invoke-WebRequest -Uri $uri

$resp

$resp.ParsedHtml.getElementsByName()

$resp.Content

$resp.Content | ConvertFrom-Json

$resp.Content | ConvertFrom-StringData

$resp.Content | ConvertFrom-StringData

$resp.ParsedHtml.getElementsByTagName("table")

$resp.AllElements

$resp.ParsedHtml.all

$resp.ParsedHtml.body.innerHTML

$resp.ParsedHtml.body.innerHTML.Remove('{"stats_sortable_player":{"copyRight":" Copyright 2018 MLB Advanced Media, L.P. Use of any content on this page acknowledges agreement to the terms posted here http://gd
x.mlb.com/components/copyright.txt ","queryResults":{"recPP":"50","created":"2018-05-15T03:57:20","recSP":"1","totalP":"1","recs":"31","totalSize":"31","row":[')

$resp.Content -replace('{"stats_sortable_player":{"copyRight":" Copyright 2018 MLB Advanced Media, L.P.  Use of any content on this page acknowledges 
agreement to the terms posted here http://gdx.mlb.com/components/copyright.txt  ","queryResults":{"recPP":"50","created":"2018-05-15T03:57:20","recSP":"1","totalP":"1",
"recs":"31","totalSize":"31","row":["', "[")  | Format-List

Invoke-RestMethod -Uri $uri

Invoke-RestMethod -Uri $uri |  Format-Table

Invoke-RestMethod -Uri $uri | Convertto-Json | Out-GridView

Invoke-RestMethod -Uri $uri | Convertto-Json | Format-Table

Invoke-RestMethod -Uri $uri -ContentType ConvertFrom-Json | Out-GridView -Title 'My Bitchin Data'