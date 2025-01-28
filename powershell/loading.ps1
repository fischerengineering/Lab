

# Spinner
$spinner = @("|", "/", "-", "\") # Die Animation
$i = 0

Write-Host "Bitte warten..." -NoNewline
while ($true) {
    Write-Host -NoNewline "`r$($spinner[$i])" # Spinner aktualisieren
    Start-Sleep -Milliseconds 100
    $i = ($i + 1) % $spinner.Length
}

# Blue bar 
for ($i = 1; $i -le 100; $i++) {
    Write-Progress -Activity "Daten werden verarbeitet..." -Status "$i% abgeschlossen" -PercentComplete $i
    Start-Sleep -Milliseconds 50
}