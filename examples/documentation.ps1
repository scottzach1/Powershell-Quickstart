# Single-Line Comments

# This variable stores the user’s name
$userName = "Alice"
$userName

# Multi-Line Comments
<#
This script calculates the total cost.
It takes quantity and unit price as input.
Author: Your Name
Date: YYYY-MM-DD
#>

# Documentation Comments
<#
.SYNOPSIS
Gets a personalized greeting message.

.DESCRIPTION
This function takes a name and returns a greeting.

.PARAMETER Name
The name of the person to greet.

.EXAMPLE
Get-Greeting -Name "Alice"
#>
function Get-Greeting {
    param (
        [string]$Name
    )
    "Hello, $Name!"
}


<#
.SYNOPSIS
A brief summary of what the function does.

.DESCRIPTION
A more detailed explanation of the function’s purpose and behavior.

.PARAMETER Meep
Details for each parameter, following the .PARAMETER ParameterName format.

.EXAMPLE
Shows usage examples of the function.

.NOTES
Additional information, such as the author’s name or version.

.LINK
External links for more information, such as documentation or references.

#>
