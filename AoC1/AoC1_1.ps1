<#
    Title:     Advent of Code
    Challenge: Day 1 Part 1 
    Status:    Solved! --> Not anymore, something changed and we get a wrong value of 1830!
    Solution:  1832
#>

$fileContent = Get-Content -Path "$PSScriptRoot\Puzzle_Input.txt";
[int]$increasements = 0;

# Skip first line of fileContent to get first increasement
for([int]$i = 1; $i -le $fileContent.Length; $i++) {

    if($fileContent[$i] -gt $fileContent[$i-1]) {
        $increasements++;
    }
}

"Number of increasements: {0}" -f $increasements;
