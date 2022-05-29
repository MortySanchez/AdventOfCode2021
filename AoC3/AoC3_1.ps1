<#
    Title:     Advent of Code
    Challenge: Day 3 Part 1
    Status:    Solved!
#>

$path = 'C:\Users\Tobias\Documents\AdventOfCode\PowerShell\AoC3\AoC3.txt'
$content = Get-Content -Path $path

[string]$gamma_rate = '';
[string]$epsilon_rate = '';

for ([int]$i = 0; $i -lt $content[0].Length; $i++) {
    for ([int]$j = 0; $j -lt $content.Length; $j++) {
        if ($content[$j][$i] -eq '1') {
            $sum++;
        }
    }

    if ($sum -gt 500) {
        $gamma_rate += '1';
    }
    else {
        $gamma_rate += '0';
    }
    $sum = 0;
}


for([int]$i = 0; $i -lt $gamma_rate.Length; $i++) {
    if($gamma_rate[$i] -eq '1') {
        $epsilon_rate += '0';
    }
    else {
        $epsilon_rate += '1';
    }
}


"Gamma-Rate: {0}" -f $gamma_rate;
"Epsilon-Rate: {0}" -f $epsilon_rate;

[int]$power_consumption = ([Convert]::ToInt32($gamma_rate, 2)) * ([Convert]::ToInt32($epsilon_rate, 2));

"Power consumption: {0}" -f $power_consumption;