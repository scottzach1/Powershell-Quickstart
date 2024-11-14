# Array
Write-Output "Array"
$array = @(1, 2, 3, 4)
$array[0]  # Access first assignment

# ArrayList
Write-Output "ArrayList"
$arrayList = New-Object System.Collections.ArrayList
$arrayList.Add(1)
$arrayList.Add(2)
Write-Output "value: $($arrayList[0])"

# Hash Table
Write-Output "HashTable"
$hashTable = @{
    Name = "John"
    Age = 30
}
$hashTable["Name"]
