$source = "\\wkst0876\Downloads\SSD CAD\SolidWorks\SWX 2018\SOLIDWORKS 2018 SP0.1"
$destination = "C:\Users\Robert.Hale\Downloads\SOLIDWORKS 2018 SP0.1"

robocopy $source $destination /mir /z /r:2 /w:1 /mt:4

# pause blue screen for user input
$HOST.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") | OUT-NULL
$HOST.UI.RawUI.Flushinputbuffer()