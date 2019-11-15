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
Write-Host "---------Continue--------"
foreach ($i in 1..10) {
    if ($i -eq 7) {
        continue
    }
    Write-Host $i
}

Write-Host "------------While loop--------"
$i = 0;
while ($i -lt 7) {
    $i++;
    if ($i -eq 5) {
        continue
    }
    Write-Host $i

}

Write-Host "--------------Break--------------"
$i = 0;
while ($i -lt 7) {
    $i++;
    if ($i -eq 3) {
        break
    }
    Write-Host $i

}

Write-Host "----------------Break Labels-----------"
$i = 0
:mainloop while ($i -lt 15) {
    Write-Host $i -ForegroundColor 'Cyan'
    $j = 0
    while ($j -lt 15) {
        Write-Host $j -ForegroundColor 'Magenta'
        $k = $i * $j
        Write-Host $k -ForegroundColor 'Green'
        if ($k -gt 100) {
            break :mainloop
        }
        $j++
    }
    $i++
}

$i = 10
while ($i -ge 0) {
    $i
    $i--
}

Write-Host "-----------While------------"

Start-Process notepad.exe
while (Get-Process notepad -ErrorAction SilentlyContinue) {
    Start-Sleep -Milliseconds 500
}


$i = 0
Do {
    $i++
    "Number $i"
} while ($i -ne 3)
$i = 0
Do {
    $i++
    "Number $i"
} until ($i -eq 3)