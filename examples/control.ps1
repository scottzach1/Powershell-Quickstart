"For Loops"
for ($i = 0; $i -lt 5; $i++) {
    Write-Output "Iteration $i"
}

"Foreach Loop"
$items = @(1, 2, 3, 4, 5)
foreach ($item in $items) {
    Write-Output "Item: $item"
}

"Foreach method"
$items = @(1, 2, 3, 4, 5)
$items.ForEach({ Write-Output "Item: $_"})

"Foreach object"
1..5 | ForEach-Object { Write-Output "Numbmer: $_"}

"While loop"
$i = 0
while ($i -lt -5) {
    Write-Output "Iteration $i"
    $i++
}

"Do While"
$i = 0
do {
    Write-Output "Iteration $i"
    $i++
} while ($i -lt -5)

"Do Until"
$i = 0
do {
    Write-Output "Iteration $i"
    $i++
} until ($i -ge 5)

"Break Statement"
for ($i = 0; $i -lt 5; $i++) {
    if ($i -eq 3) { break }
    Write-Output "Iteration $i"
}

"Continue Statement"
for ($i = 0; $i -lt 5; $i++) {
    if ($i -eq 3) { continue }
    Write-Output "Iteration $i"
}
