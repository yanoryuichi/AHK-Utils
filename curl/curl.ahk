cmd_params := ""

Loop, %0%
{
    param := %A_Index%
    cmd_params := cmd_params .  " " . param
}

CURL_DIR := APP_DIR . "\curl"
CURL_EXE := APP_DIR . "\curl\curl.exe"
if (!FileExist(CURL_DIR) || !FileExist(CURL_EXE)) {
    MsgBox, 16, , curl is not found: %CURL_EXE%
    Exit
}

; PATH := CURL_DIR . ";" . PATH
; EnvSet, PATH, %PATH%
; Run, %comspec% /c ""%CURL_EXE%" %cmd_params%"
Run, "%CURL_EXE%" %cmd_params%, , Hide
