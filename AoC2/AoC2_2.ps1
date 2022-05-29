<#
    Title:     Advent of Code
    Challenge: Day 2 Part 2 
    Status:    Solved!
#>

$fileContent = Get-Content -Path "$PSScriptRoot\Puzzle_Input.txt"

[int]$horizontal_position = 0;
[int]$depth = 0;
[int]$aim = 0;

$fileContent | ForEach-Object {

    $move_direction = $_.Split(' ')[0]
    $move_value =     $_.Split(' ')[1]

    switch($move_direction)
    {
        'forward' {
            $horizontal_position += [int]$move_value;
            $depth += ($aim * [int]$move_value)
        }
        'up' {
            $aim -= [int]$move_value;
        }
        'down' {
            $aim += [int]$move_value;
        }       
    }
}

"Solution: {0}" -f ($horizontal_position * $depth);
