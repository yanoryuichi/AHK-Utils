ps *autohotkey* | kill
sleep 2
$prop = $(Get-ItemProperty 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders')
$ahk_files = dir -Filter *.ahk.lnk $prop.Startup
$ahk_files | % { start $_.FUllName }
