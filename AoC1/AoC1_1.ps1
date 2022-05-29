<#
    Title:     Advent of Code
    Challenge: Day 1 Part 1 
    Status:    Solved!
    Solution:  1832
#>

$fileContent = Get-Content -Path "$PSScriptRoot\Challenge_Part_1_Data.txt";
[int]$increasements = 0;

for($i = 1; $i -lt $fileContent.Length; $i++) {
    

    $tmp_a = $fileContent[$i];
    $tmp_b = $fileContent[$i-1];


    if ($tmp_a -gt $tmp_b) {
        $increasements++;
    }
}

"Number of increasements: {0}" -f $increasements;
