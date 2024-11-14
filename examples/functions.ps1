# Basic (no args)
function Get-Greeting {
    "Hello, World!"
}
Get-Greeting

# Parameters (basic)
function Get-Greeting {
    param($Name)
    "Hello $Name!"
}
Get-Greeting "Bob"

# Parameters (pytes and default values)
function Add-Numbers {
    param(
        [int]$a = 0,
        [int]$b = 0
    )
    return $a + $b
}
Add-Numbers -a 5 -b 10

# Advanced Parameter Attributes
function Show-Message {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Message
    )
    Write-Output $Message
}
# Call this function without -Message, and PowerShell prompts for it
Show-Message -Message "Required message"

# Pipeline Input
function Convert-ToUpper {
    param (
        [Parameter(ValueFromPipeline=$true)]
        [string]$InputString
    )
    process {
        $InputString.ToUpper()
    }
}
# Use with pipeline
"hello", "world" | Convert-ToUpper
# Result: "HELLO", "WORLD"
