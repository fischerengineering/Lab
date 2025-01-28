# Author Felix Fischer
# 28.01.2025
function Send-Url {
    
    param (
        [Parameter (Mandatory=$true)]
        [string]$Body
    )

    # Build json body
    $b = @{
        "UrlContent" = $Body
    } | ConvertTo-Json

    # Server url
    $url = "http://localhost:8080/url"

    # Post
    $response = Invoke-RestMethod -Uri $url -Method Post -Body $b -ContentType "application/json"

    Write-Host "Here is your answer"
    Write-Host $response
}