param($minutes = 600)

$myshell = New-Object -com "Wscript.Shell"

for ($i = 0; $i -lt $minutes; $i++) {
    Start-Sleep -Seconds 60

    $myshell.sendkeys(".")

#    $Pos = [System.Windows.Forms.Cursor]::Position
#    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((($Pos.X) + 1) , $Pos.Y)
}