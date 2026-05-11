$artis = @("Hindia", "Feast", "Bernadya")

foreach ($tampung in $artis) {
    if (Test-Path $tampung) {
        rm $tampung -Recurse -Force
    }
}