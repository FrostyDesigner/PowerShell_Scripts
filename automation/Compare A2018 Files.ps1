$cs_Source = "O:\AdeptDevelopment\Installs\nAWC2018\5_TestRelease\AdeptClientServices\ClientServices.msi"
$tp_Source = "O:\AdeptDevelopment\Installs\Adept2018\5_TestRelease\Adept\QA_AdeptTaskPane\TaskPane.msi"
$aci_Source = "O:\AdeptDevelopment\Installs\Adept2018\5_TestRelease\Adept\QA_Client\AdeptClientInstaller.msi"
$rd_Source = "O:\AdeptDevelopment\Installs\nAWC2018\5_TestRelease\AdeptDWG\RealDWG.msi"
$ans_Source = "O:\AdeptDevelopment\Installs\Adept2018\5_TestRelease\Adept\Adept\AdeptNativeServer.exe"
$pws_Source = "O:\AdeptDevelopment\Installs\PublishWave2018\5_TestRelease\AdeptPublishWaveServer.exe"
$apw_Source = "O:\AdeptDevelopment\Installs\PublishWave2018\5_TestRelease\PlugIn\AdtPublishWave.msi"
$aws_Source = "O:\AdeptDevelopment\Installs\nAWC2018\5_TestRelease\AdeptWebServer.exe"

$cs_Destination = "C:\1_HOLD\DOWNLOAD\ClientServices.msi"
$tp_Destination = "C:\1_HOLD\DOWNLOAD\TaskPane.msi"
$aci_Destination = "C:\1_HOLD\DOWNLOAD\AdeptClientInstaller.msi"
$rd_Destination = "C:\1_HOLD\DOWNLOAD\RealDWG.msi"
$ans_Destination = "C:\1_HOLD\DOWNLOAD\AdeptNativeServer.exe"
$pws_Destination = "C:\1_HOLD\DOWNLOAD\AdeptPublishWaveServer.exe"
$apw_Destination = "C:\1_HOLD\DOWNLOAD\AdtPublishWave.msi"
$aws_Destination = "C:\1_HOLD\DOWNLOAD\AdeptWebServer.exe"


if((Get-FileHash $cs_Source).hash  -ne (Get-FileHash $cs_Destination).hash)
{"ClientServices.msi files are different"}
Else {"ClientServices.msi files are the same"}

if((Get-FileHash $tp_Source).hash  -ne (Get-FileHash $tp_Destination).hash)
{"TaskPane.msi files are different"}
Else {"TaskPane.msi files are the same"}

if((Get-FileHash $aci_Source).hash  -ne (Get-FileHash $aci_Destination).hash)
{"AdeptClientInstaller.msi files are different"}
Else {"AdeptClientInstaller.msi files are the same"}

if((Get-FileHash $rd_Source).hash  -ne (Get-FileHash $rd_Destination).hash)
{"RealDWG.msi files are different"}
Else {"RealDWG.msi files are the same"}

if((Get-FileHash $ans_Source).hash  -ne (Get-FileHash $ans_Destination).hash)
{"AdeptNativeServer.exe files are different"}
Else {"AdeptNativeServer.exe files are the same"}

if((Get-FileHash $pws_Source).hash  -ne (Get-FileHash $pws_Destination).hash)
{"AdeptPublishWaveServer.exe files are different"}
Else {"AdeptPublishWaveServer.exe files are the same"}

if((Get-FileHash $apw_Source).hash  -ne (Get-FileHash $apw_Destination).hash)
{"AdtPublishWave.msi files are different"}
Else {"AdtPublishWave.msi files are the same"}

if((Get-FileHash $aws_Source).hash  -ne (Get-FileHash $aws_Destination).hash)
{"AdeptWebServer.exe files are different"}
Else {"AdeptWebServer.exe files are the same"}


# pause blue screen for user input
$HOST.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") | OUT-NULL
$HOST.UI.RawUI.Flushinputbuffer()