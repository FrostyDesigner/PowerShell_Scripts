﻿start-job {
    [console]::beep(784,150) 
    Start-Sleep -m 300 
    [console]::beep(784,150) 
    Start-Sleep -m 300 
    [console]::beep(932,150) 
    Start-Sleep -m 150 
    [console]::beep(1047,150) 
    Start-Sleep -m 150 
    [console]::beep(784,150) 
    Start-Sleep -m 300 
    [console]::beep(784,150) 
    Start-Sleep -m 300 
    [console]::beep(699,150) 
    Start-Sleep -m 150 
    [console]::beep(740,150) 
    Start-Sleep -m 150 
    [console]::beep(784,150) 
    Start-Sleep -m 300 
    [console]::beep(784,150) 
    Start-Sleep -m 300 
    [console]::beep(932,150) 
    Start-Sleep -m 150 
    [console]::beep(1047,150) 
    Start-Sleep -m 150 
    [console]::beep(784,150) 
    Start-Sleep -m 300 
    [console]::beep(784,150) 
    Start-Sleep -m 300 
    [console]::beep(699,150) 
    Start-Sleep -m 150 
    [console]::beep(740,150) 
    Start-Sleep -m 150 
    [console]::beep(932,150) 
    [console]::beep(784,150) 
    [console]::beep(587,1200) 
    Start-Sleep -m 75 
    [console]::beep(932,150) 
    [console]::beep(784,150) 
    [console]::beep(554,1200) 
    Start-Sleep -m 75 
    [console]::beep(932,150) 
    [console]::beep(784,150) 
    [console]::beep(523,1200) 
    Start-Sleep -m 150 
    [console]::beep(466,150) 
    [console]::beep(523,150)
}
Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak("Your mission... should you choose to accept it... is to deliver this code sample in xml form.")