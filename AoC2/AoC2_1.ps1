﻿<#
    Title:     Advent of Code
    Challenge: Day 2 Part 1 
    Status:    Solved!
#>

$path = 'C:\Users\Tobias\Documents\AdventOfCode\AoC2\AoC2.txt'
$content = Get-Content -Path $path

[int]$horizontal_position = 0;
[int]$depth = 0;

$content | ForEach-Object {

    $move_direction = $_.Split(' ')[0]
    $move_value =     $_.Split(' ')[1]

    switch ($move_direction)
    {
        'forward' {
            $horizontal_position += [int]$move_value;
        }
        'up' {
            $depth -= [int]$move_value;
        }
        'down' {
            $depth += [int]$move_value;
        }       
    }
}

$solution = $horizontal_position * $depth
$solution