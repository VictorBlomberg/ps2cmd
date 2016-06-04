$file = $args[0]
Write-Host "File: $file"
$textString = Get-Content $file | Out-String
$textString = 'Write-Host $env:PS2CMD_ARGS; function step2 { ' + $textString + ' }
step2 $env:PS2CMD_ARGS'
Write-Host "Text string: $textString"
$textBytes = [System.Text.Encoding]::Unicode.GetBytes($textString)
$encoded = [System.Convert]::ToBase64String($textBytes)
$final = "SET PS2CMD_ARGS=%* & PowerShell.exe -NoProfile -EncodedCommand " + $encoded
$final | Set-Content ($file + ".cmd") 
