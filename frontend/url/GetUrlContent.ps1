# Author Felix Fischer
# 28.01.2025
function Get-UrlContent {
    
    param (
        [Parameter (Mandatory=$true)]
        [string]$Url
    )

    $content = [PSCustomObject]@{
        Url = ""
        Timestamp = ""
        Body = ""
    }

    Start-Sleep -Seconds 5

    $content.Url = $Url
    $content.Timestamp = Get-Date
    $content.Body = "My secret..."

    return $content
}