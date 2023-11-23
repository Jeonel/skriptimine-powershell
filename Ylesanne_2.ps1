
$Eesnimi = Read-Host "Sisesta oma eesnimi"
$Perenimi = Read-Host "Sisesta oma perekonnanimi"

$Kasutajanimi = "$Eesnimi.$Perenimi"

$existingUser = Get-LocalUser -Name $Kasutajanimi -ErrorAction SilentlyContinue

if ($existingUser) {
    Remove-LocalUser -Name $Kasutajanimi -Verbose
    Write-Host "Kasutaja '$Kasutajanimi'  on kustutatud."
} else {
    Write-Host "Kasutajat '$Kasutajanimi' ei leitud."
}
