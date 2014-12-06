(&{if($c-is[System.Net.WebClient]){$c}else{($Global:c=New-Object System.Net.WebClient)}}).DownloadString("http://en.wikipedia.org/wiki/Lazy_initialization")
