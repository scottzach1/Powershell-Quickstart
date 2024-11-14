# Basic Interpolation
$name = "John"
Write-Output "Hello, $name!"

# Interpolating Expressions
$a = 5
$b = 10
Write-Output "The sum of $a and $b is $($a + $b)"

# Using Single Quotes (DO NOT ALLOW INTERPOLATIONS)
$name = "John"
Write-Output 'Hello, $name!'

Multi-line Interpolation
$name = "Alice"
Write-Output @"
Hello, $name!
Welcome to PowerShell.
"@
