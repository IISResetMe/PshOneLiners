(&{if($c-is[System.Net.WebClient]){$c}else{($c=New-Object System.Net.WebClient)}}).DownloadString("http://en.wikipedia.org/wiki/Lazy_initialization")
