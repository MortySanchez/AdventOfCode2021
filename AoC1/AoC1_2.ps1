<#
    Title:     Advent of Code
    Challenge: Day 1 Part 2 
    Status:    Solved!
    Solution:  1858
#>

$fileContent = Get-Content -Path "$PSScriptRoot\Challenge_Part_1_Data.txt";


[int]$increasements = 0;
[int]$decreasements = 0;

for ( [int]$i = 0; $i -lt $fileContent.Length; $i++ ) {
  
    $nums_A = $fileContent[$i..($i+2)];
    $nums_B = $fileContent[($i+1)..($i+3)];

    if ( $nums_A.Length -eq 3 -and $nums_B.Length -eq 3 ) {
    
        foreach ( $num in $nums_A ) {
            [int]$sum_A += [int]$num;
        }

        foreach ( $num in $nums_B ) {
            [int]$sum_B += [int]$num;
        }
        

        if ( $sum_B -gt $sum_A ) {
            $increasements++;
            "{0} -gt {1}" -f $sum_B, $sum_A;

        }
        else {
            $decreasements++;
            "{0} -lt {1}" -f $sum_B, $sum_A;
        }
    }
    Clear-Variable sum_A
    Clear-Variable sum_B
}

"Increasements: {0}" -f $increasements;
"Decreasements: {0}" -f $decreasements;
