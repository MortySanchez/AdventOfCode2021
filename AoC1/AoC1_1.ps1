<#
    Title:     Advent of Code
    Challenge: Day 1 Part 1 
    Status:    Solved! --> Not anymore, something changed and we get a wrong value!
    Solution:  1832
#>

$fileContent = Get-Content -Path "$PSScriptRoot\Puzzle_Input.txt";
[int]$increasements = 0;

for($i = 1; $i -lt $fileContent.Length; $i++) {
    

    $tmp_a = $fileContent[$i];
    $tmp_b = $fileContent[$i-1];


    if ($tmp_a -gt $tmp_b) {
        $increasements++;
    }
}

"Number of increasements: {0}" -f $increasements;
