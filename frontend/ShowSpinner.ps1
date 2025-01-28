# Author Felix Fischer
# 28.01.2025
function Show-Spinner {
    param (
        [Parameter (Mandatory=$true)]
        [scriptblock]$Action
    )

    # Spinner settings haha
    $spinner = @("|", "/", "-", "\") # Die Animation
    $i = 0
    $spinnerRunning = $true



    # Execute
    $job = Start-Job -ScriptBlock {$Action}

    # Show spinner
    while ($spinnerRunning) {
        # Show spinner animation
        Write-Host -NoNewline "`r$($spinner[$i])"
        # Control animation speed
        Start-Sleep -Milliseconds 100
        # idk
        $i = ($i + 1) % $spinner.Length
        
        # Check state
        if ($job.State -ne 'Running') {
            $spinnerRunning = $false
        }

    }

    # Get result
    $result = Receive-Job -Job $job
    Remove-Job -Job $job
    return $result
}