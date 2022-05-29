<#
    Title:     Advent of Code
    Challenge: Day 1 Part 2 
    Status:    Solved!
#>

$Content = Get-Content -Path 'C:\Users\Tobias\Documents\AdventOfCode\AoC1\AoC1_2.txt'


[int]$increasements = 0;
[int]$decreasements = 0;

for ( [int]$i = 0; $i -lt $Content.Length; $i++ ) {
  
    $nums_A = $Content[$i..($i+2)]
    $nums_B = $Content[($i+1)..($i+3)]

    if ( $nums_A.Length -eq 3 -and $nums_B.Length -eq 3 ) {
        
        
            # sum_A und sum_B bilden

            foreach ( $num in $nums_A ) {
                [int]$sum_A += [int]$num
            }

            foreach ( $num in $nums_B ) {
                [int]$sum_B += [int]$num
            }
        

        if ( $sum_B -gt $sum_A ) {
            $increasements++;
            Write-Host "$sum_B -gt $sum_A"
        }
        else {
            $decreasements++;
            Write-Host "$sum_B -lt $sum_A"
        }
    }
    Clear-Variable sum_A
    Clear-Variable sum_B
}
Write-Host "Increasements: $increasements"
Write-Host "Decreasements: $decreasements"