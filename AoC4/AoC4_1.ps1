<#
    Title:     Advent of Code
    Challenge: Day 4 Part 1
    Status:    To be solved!
#>

$filePath = 'C:\Users\Tobias\Documents\AdventOfCode\PowerShell\AoC4\AoC4.txt'
$fileContent = Get-Content -Path $filePath

[System.Array]$winningNumbers = $fileContent[0].Split(',')

[System.Collections.ArrayList]$bingoBoardNumbers = @()
[System.Collections.ArrayList]$cleanNumbers = @()

for([int]$i = 1; $i -lt $fileContent.Length; $i++) {
    if($fileContent[$i].Length -eq 14) {
        $bingoBoardNumbers.Add($fileContent[$i])
    }
}

$splittetBingoBoardNumbers = $bingoBoardNumbers.Split(' ')


for([int]$i = 0; $i -lt $splittetBingoBoardNumbers.Length; $i++) {
    if($splittetBingoBoardNumbers[$i].Length) {
        $cleanNumbers.Add($splittetBingoBoardNumbers[$i])
    }
}

$countBingoBoards = ($cleanNumbers.Count / 25)

for([int]$i = 0; $i -lt $countBingoBoards; $i++) {
    
}