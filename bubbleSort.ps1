function BubbleSort {
    param (
        [int[]]$arr
    )

    $n = $arr.Length

    for ($i = 0; $i -lt $n - 1; $i++) {
        for ($j = 0; $j -lt $n - $i - 1; $j++) {
            if ($arr[$j] -gt $arr[$j+1]) {
                $temp = $arr[$j]
                $arr[$j] = $arr[$j+1]
                $arr[$j+1] = $temp
            }
        }
    }
    return $arr
}

$sortedArray = BubbleSort -arr @(1, 22, 94, 8, 14, 23, 9, 7, 104, 74, 0, 4, 64, 34, 91, 44, 53)
$sortedArray
