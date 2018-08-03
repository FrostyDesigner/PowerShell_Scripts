#$site = 'https://genius.com/1276479'
$site = "https://genius.com/Geto-boys-mind-playing-tricks-on-me-lyrics"

$resp = Invoke-WebRequest $site

$resp.ParsedHtml.documentElement.outerText | Out-GridView

$body = $resp.ParsedHtml.documentElement.outerText.Replace(" | Genius Lyrics{{:: 'cloud_flare_always_on_short_message' | i18n }}", "")

$body.Replace("Check @genius for updates. We'll have things fixed soon. GENIUS | | Facebook Twitter Instagram Youtube", "")