
$Eesnimi = Read-Host "Sisesta oma eesnimi"
$Perenimi = Read-Host "Sisesta oma perekonnanimi"

$Kasutajanimi = "$Eesnimi.$Perenimi"

if(Get-LocalUser -Name $Kasutajanimi -ErrorAction SilentlyContinue) {
    Write-Host "Viga: Kasutaja '$Kasutajanimi' on juba olemas."

} else {

$Parool = Read-Host "Sisesta parool" -AsSecureString

$Kontokirjeldus = Read-host "Konto kirjeldus"

New-LocalUser $Kasutajanimi -Password $Parool -FullName "$Eesnimi $Perenimi" -Description "$Kontokirjeldus"

Echo "Kasutaja loodud:"
Echo "Kasutajanimi: $Kasutajanimi"
Echo "Täisnimi: $Eesnimi $Perenimi"
Echo "Konto kirjeldus: $Kontokirjeldus"
}