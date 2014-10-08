# Takes a single string as its argument and outputs the MD5 sum
&{param($s)-join(([System.Security.Cryptography.MD5]::Create()).ComputeHash([System.Text.Encoding]::ASCII.GetBytes(""+$s))|%{$_.ToString("X2")}).ToLower()}
