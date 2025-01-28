# Author Felix Fischer
# 28.01.2025

. "C:\Coding\lab\Lab\frontend\url\GetUrl.ps1"
$url = Get-Url

. "C:\Coding\lab\Lab\frontend\url\GetUrlContent.ps1"
$urlContent = Get-UrlContent -Url $url

. "C:\Coding\lab\Lab\frontend\url\SendUrl.ps1"
Send-Url -Body $urlContent.Body

