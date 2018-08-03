start-job {

    [console]::beep(440,500)
    
    [console]::beep(440,500)
    
    [console]::beep(440,500)
    
    [console]::beep(349,350)
    
    [console]::beep(523,150)
    
    [console]::beep(440,500)
    
    [console]::beep(349,350)
    
    [console]::beep(523,150)
    
    [console]::beep(440,1000)
    
    [console]::beep(659,500)
    
    [console]::beep(659,500)
    
    [console]::beep(659,500)
    
    [console]::beep(698,350)
    
    [console]::beep(523,150)
    
    [console]::beep(415,500)
    
    [console]::beep(349,350)
    
    [console]::beep(523,150)
    
    [console]::beep(440,1000)
    
    }

Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak("Don't be too proud of this technological terror you've constructed. The ability to destroy a planet is insignificant next to the power of the Force.")