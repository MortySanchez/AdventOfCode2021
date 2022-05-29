<#
    Title:     Advent of Code
    Challenge: Day 3 Part 2
    Status:    Solved!
#>

$fileContent = Get-Content -Path "$PSScriptRoot\Puzzle_Input"


Function Get-OxygenGeneratorRating {

    Param(
    
        [Parameter(Mandatory=$true)]
        [System.Collections.ArrayList]$InputObject
    )

    for([int]$bitPosition = 0; $bitPosition -lt 12; $bitPosition++) {
    
    if($InputObject.Capacity -eq 2) {
        Return $InputObject | Where-Object {$_[-1] -eq "1"}
    }

    [int]$sum = 0
    foreach($value in $InputObject) {

        $sum += [Convert]::ToInt32($value[$bitPosition], 2)
    }

    if($sum -gt ($InputObject.Capacity / 2)) {
        $keepvalue = 1 # keep values with 1 at bit position
    }
    elseif($sum -eq ($InputObject.Capacity / 2)) {
        $keepvalue = 1 # keep values with 1 at bit position if same amount as 0s
    }
    else {
        $keepvalue = 0 # keep values with 0 at bit position 
    }

        $InputObject = ($InputObject | Where-Object {$_[$bitPosition] -eq "$($keepvalue)"})
    } 
}


Function Get-CO2ScrubberRating() {
    
    Param(
    
        [Parameter(Mandatory=$true)]
        [System.Collections.ArrayList]$InputObject
    )

    for([int]$bitPosition = 0; $bitPosition -lt 12; $bitPosition++) {
    
    if($InputObject.Capacity -eq 2) {
        Return $InputObject | Where-Object {$_[$bitPosition] -eq "0"}
    }

    [int]$sum = 0
    foreach($value in $InputObject) {

        $sum += [Convert]::ToInt32($value[$bitPosition], 2)
    }

    if($sum -lt ($InputObject.Capacity / 2)) {
        $keepvalue = 1 # keep values with 1 at bit position
    }
    else {
        $keepvalue = 0 # keep values with 0 at bit position 
    }

        $InputObject = ($InputObject | Where-Object {$_[$bitPosition] -eq "$($keepvalue)"})
    } 
}


Function Get-LifeSupportRating {

    Param(
    
        [Parameter(Mandatory=$true)]
        [int]$OxyegenGeneratorRating,


        [Parameter(Mandatory=$true)]
        [int]$CO2ScrubberRating
    )


    Return $OxyegenGeneratorRating * $CO2ScrubberRating
}

$oxygenGeneratorRating = Get-OxygenGeneratorRating -InputObject $fileContent
$co2ScrubberRating = Get-CO2ScrubberRating -InputObject $fileContent

$lifeSupportRating = Get-LifeSupportRating -OxyegenGeneratorRating ([Convert]::ToInt32($oxygenGeneratorRating, 2)) -CO2ScrubberRating ([Convert]::ToInt32($co2ScrubberRating, 2))

"Oxy Bin: {0}" -f $oxygenGeneratorRating
"Oxy Dec: {0}" -f ([Convert]::ToInt32($oxygenGeneratorRating, 2))
""
"CO2 Bin: {0}" -f $co2ScrubberRating
"CO2 Dec: {0}" -f ([Convert]::ToInt32($co2ScrubberRating, 2))
"" 
"Life Support Rating: {0}" -f $lifeSupportRating