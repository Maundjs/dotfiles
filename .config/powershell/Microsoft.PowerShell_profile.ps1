Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -BellStyle None
Invoke-Expression (&starship init powershell)
