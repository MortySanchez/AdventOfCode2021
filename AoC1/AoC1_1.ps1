<#
    Title:     Advent of Code
    Challenge: Day 1 Part 1 
    Status:    Solved!
#>

$numbers = Get-Content -Path "C:\Users\Tobias\Documents\numbers.txt"
[int]$counter = 0;

for ( $i = 1; $i -lt $numbers.Length; $i++ ) {
    

    $tmp_a = $numbers[$i]
    $tmp_b = $numbers[$i-1]


    if ( $tmp_a -gt $tmp_b ) {
        $counter++;
    }
}

$counter;