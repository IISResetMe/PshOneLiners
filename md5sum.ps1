# Takes a single string as its argument and outputs the MD5 sum
&{param($s)-join(([Security.Cryptography.MD5]::Create()).ComputeHash([Text.Encoding]::ASCII.GetBytes("$s"))|% ToString X2 ).ToLower()}
