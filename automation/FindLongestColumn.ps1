

<#
Import-Csv "C:\Users\Robert.Hale\Documents\Projects\2018\Entergy\From Entergy\T_TRACS_DWR.txt" -Delimiter "`t" | Measure-Object -Property 'dwroi' -character -Line -Word



Import-Csv "C:\Users\Robert.Hale\Documents\Projects\2018\Entergy\From Entergy\T_TRACS_DWR.txt" -Delimiter "`t" | 
Measure-Object (-Maximum -Property Length).Maximum


("lalala","hehe","hi" | Measure-Object -Maximum -Property Length).Maximum



Import-Csv "C:\Users\Robert.Hale\Documents\Projects\2018\Entergy\From Entergy\T_TRACS_DWR.txt" -Delimiter "`t" |
Measure-Object -Property dwroi




#$array1=@("test";"coucou","helloword")
Import-Csv "C:\Users\Robert.Hale\Documents\Projects\2018\Entergy\From Entergy\T_TRACS_DWR.txt" -Delimiter "`t" |
Select-Object requester_userid | 
sort dwroi.length | select -Last 1

#>

$array1 = Import-Csv "C:\Users\Robert.Hale\Documents\Projects\2018\Entergy\From Entergy\T_TRACS_DWR.txt" -Delimiter "`t" |
Select-String dwroi | sort 

($array1 | Measure-Object -Maximum -Property Length).Maximum


#($array1 | Measure-Object -Maximum -Property Length).Maximum
