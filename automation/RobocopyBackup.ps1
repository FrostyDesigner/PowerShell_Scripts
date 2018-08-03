$source = "C:\!Source"
$destination = "C:\!Destination"
robocopy $source $destination /mir /z /r:2 /w:1 /mt:4

#robocopy "C:\Users\Robert.Hale" "F:\Robert.Hale" /mir /z /r:2 /w:1 /mt:4 /xd "C:\Users\Robert.Hale\AppData" "C:\Users\Robert.Hale\Application Data" "C:\Users\Robert.Hale\Local Settings" /xf *ntuser*  - the latest also works and uses a multithread of 4 processes 
