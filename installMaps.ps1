$PATH = "C:\Program Files\Epic Games\rocketleague\TAGame\CookedPCConsole"

$CUSTOM_MAPS = @( 
    "AimTrainingRL.udk",
    "DribbleChallenge2Overhaul.udk",
    "LethNeonHeightsRings.udk",
    "speed_jump_rings2.udk",
    "LethIceRings.udk",   
    "noob_dribble.udk"
)

$LABS_MAPS = @(
    "Labs_DoubleGoal_V2_P.upk",
    "Labs_Utopia_P.upk",
    "Labs_CirclePillars_P.upk",
    "Labs_Cosmic_V4_P.upk",
    "Labs_Octagon_02_P.upk",
    "Labs_Underpass_P.upk"
)

for ($i = 0; $i -lt $CUSTOM_MAPS.Length; $i++) {
    $dest = Join-Path $PATH $LABS_MAPS[$i]
    Write-Host $CUSTOM_MAPS[$i]
    Write-Host $dest
    Copy-Item -Path $CUSTOM_MAPS[$i] -Destination $dest
}
