# grep -r $pattern $path 
Get-ChildItem -Path $path -Recurse | Select-String $pattern -CaseSensitive
# shorts to
ls $path -r|sls $pattern -ca
# ISE-snippet to auto-expand proper expression in ISE
New-IseSnippet -Title "ls -r | sls" -Text "Get-ChildItem -Path .\ -Recurse | Select-String `"`" -CaseSensitive" -CaretOffset 49 -Description "grep recurse"
