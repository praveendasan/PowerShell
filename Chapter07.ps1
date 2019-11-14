$Names = { 'Praveen', 'Dasan', 'Punitha', 'Manju'}
foreach ($Name in $Names) {
    Write-Host "Hi, my name is $Name!"
}

$Numbers = foreach ($Number in 1..20) {
    $Number #Alternatively, Write-Output $Number
}
Write-Host $Numbers

foreach ($Number in $Numbers) {
    Write-Host "$Number"
}

$Numb = @()
foreach ($Numb in 1..20) {
    $Numb += $Numb
}
Write-Host $Numb

for ($and = 0; $and -lt 5; $and++) {
    "$and"
}

(1..10).ForEach( { $_ * $_ })

$names = @("Any", "Bob", "Celine", "David")
$names | ForEach-Object {
    "Hi, my name is $_"
}