# Author Felix Fischer
# 28.01.2025
function Get-Url {
    Write-Host "Hello! Send me a link and I will check it out for you!"
    # Set link to null to start while user login loop
    $url = $null

    # Pattern vor url checking below
    $urlPattern = '^(https?://)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(:\d+)?(/.*)?$'

    # Repeat user login until link was entered
    while ($null -eq $url) {
        # Get user input
        $url = Read-Host

        # Check input with pattern
        if ($url -match $urlPattern) {
            Write-Host "Great. I will surely check that out for you!"
        } else {
            Write-Host "Oh no, it seems like you entered something, I can not understand."
            Write-Host "Hello again! Send me a link and I will check it out for you!"
            # Set link to null to loop user input again
            $url = $null
        }
    }
    return $url
}