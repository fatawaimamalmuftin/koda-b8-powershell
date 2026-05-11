$artis = @("Hindia", "Feast", "Bernadya")

$songs = @(@(), @(), @())

$songs[0] = @(
    $artis[0] + " - cthlaguH1 "
    $artis[0] + " - cthlaguH2 "
    $artis[0] + " - cthlaguH3 "
    $artis[0] + " - cthlaguH4 "
    $artis[0] + " - cthlaguH5 "
)

$songs[1] = @(
    $artis[1] + " - cthlaguF1 "
    $artis[1] + " - cthlaguF2 "
    $artis[1] + " - cthlaguF3 "
    $artis[1] + " - cthlaguF4 "
    $artis[1] + " - cthlaguF5 "
)

$songs[2] = @(
    $artis[2] + " - cthlaguB1 "
    $artis[2] + " - cthlaguB2 "
    $artis[2] + " - cthlaguB3 "
    $artis[2] + " - cthlaguB4 "
    $artis[2] + " - cthlaguB5 "
)

for ($i = 0; $i -lt $artis.Length; $i++) {
    ni -ItemType Directory $artis[$i]
    for ($j = 0; $j -lt $songs[$i].Length; $j++) {
        $Tampung = $songs[$i][$j] + ".mp3"
        ni -ItemType File $Tampung
        mv $Tampung -Destination $artis[$i]
    }
}
