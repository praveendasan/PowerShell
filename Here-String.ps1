#Here-String chapter

@"
Simple
    multiline sting
with "quotes"
"@

@'
The following line won't be expanded
$(Get-Date)
because this is a literal here-string
'@

#Concatenating strings
$string = "Power"
$string2 = "shell"
"Greeting from $string$string2"

$string1 = "Powershell"
$string2 = "Greeting from"
$string2 + " " + $string1

"The title of the console '" + $Host.Name + "' "

#Using subexpression - $()
"Tomorrow is $((Get-Date).AddDays(1).DayOfWeek)"

#special characters (backtick `) represents a special character
"This`tuses`ttab`r`nThis is on a second line"

$myLiteralString = 'Simple text including special characters `n) and a $variable-reference'
$myLiteralString

#Format string
$hash = @{city = 'kanyakumari' }
$result = 'you should really visit {0}' -f $hash.city
$result