$Names = { 'Praveen', 'Dasan', 'Punitha', 'Manju' }
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

#Foreach object advantage
#Begin, Process, End block
"Daniel", "Joseph", "Mark" | ForEach-Object -Begin {
    $Namelist = @()
} -Process {
    $Namelist += "Hi, my name is $_"
}-End {
    #Count messages and output
    Write-Host "Total messages: $($Namelist.Count)"
    $Namelist
}

#Section 7.5: Continue