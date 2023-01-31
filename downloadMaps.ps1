<#
"speed_jump_rings2.udk", 1Y6glZooA0DMc-ya7VLmbpTvX-hBnzbk_
"LethNeonHeightsRings.udk", 1Mjs-Mi2wIrQeAxcP_Yd85Xv651KYaRec
"AimTrainingRL.udk", 1cSdoMpghL3P-DeghZP3NyX50eqLhJG_W
"DribbleChallenge2Overhaul.udk", 1VHPJETYCCBVdMHGrnj2KTUCPrbbmkJoz
"LethIceRings.udk", 16ypt4ic8mN1gDenhUT3vBBt7Cv4gnd3I  
"noob_dribble.udk", 1EppgWmIiwJrLqMNKtWzvME6llzYFVplu
#>

$FILES = @(
    [PSCustomObject]@{
        Name   = "speed_jump_rings2.udk"
        FileId = "1Y6glZooA0DMc-ya7VLmbpTvX-hBnzbk_"
    },
    [PSCustomObject]@{
        Name   = "LethNeonHeightsRings.udk"
        FileId = "1Mjs-Mi2wIrQeAxcP_Yd85Xv651KYaRec"
    },
    [PSCustomObject]@{
        Name   = "AimTrainingRL.udk"
        FileId = "1cSdoMpghL3P-DeghZP3NyX50eqLhJG_W"
    },
    [PSCustomObject]@{
        Name   = "DribbleChallenge2Overhaul.udk"
        FileId = "1VHPJETYCCBVdMHGrnj2KTUCPrbbmkJoz"
    },
    [PSCustomObject]@{
        Name   = "LethIceRings.udk"
        FileId = "16ypt4ic8mN1gDenhUT3vBBt7Cv4gnd3I"
    },
    [PSCustomObject]@{
        Name   = "noob_dribble.udk"
        FileId = "1EppgWmIiwJrLqMNKtWzvME6llzYFVplu"
    }
)

$ProgressPreference = 'SilentlyContinue'

foreach ($file in $FILES) {
    $url = "https://drive.google.com/uc?export=download&id=$($file.FileId)"
    $dest = Join-Path "." $file.Name
    Write-Host $url
    Write-Host $dest
    # Invoke-WebRequest -Uri $url -OutFile $dest
}

Write-Host -NoNewLine 'Google Drive has stupid virus scan... you can download manually here: https://drive.google.com/drive/folders/1r21dcYXoGyNmvimnYIXohfGgzEilDLtn?usp=share_linki you can find this link in the README' ;
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');