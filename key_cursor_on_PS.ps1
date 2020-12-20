$key_count = 0
$start_x = 0
$end_x = 39
$current_x = 0
$start_y = 0
$end_y = 39
$current_y = 0

$is_running = $true

while ($is_running) {
    Clear-Host

    'exit with "q"'
    "x: " + $current_x
    "y: " + $current_y
    "key: " + $key

    $field = ""
    
    $field += "`n" * ($current_y - $start_y)
    $field += "  " * ($current_x - $start_x)
    $field += "*"
    $field

    $key = [Console]::ReadKey($true).Key

    $key_count++

    if ($key -eq "RightArrow" `
            -and $current_x -lt $end_x) {
        $current_x++
    }
    elseif ($key -eq "LeftArrow" `
            -and $start_x -lt $current_x) {
        $current_x--
    }
    elseif ($key -eq "DownArrow" `
            -and $current_y -lt $end_y) {
        $current_y++
    }
    elseif ($key -eq "UpArrow" `
            -and $start_y -lt $current_y) {
        $current_y--
    }
    elseif ($key -eq "q") {
        $is_running = $false
    }
}

