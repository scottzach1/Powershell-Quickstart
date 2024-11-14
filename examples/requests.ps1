# Basic GET Request
$url = "https://cat-fact.herokuapp.com/facts"
$response = Invoke-RestMethod -Uri $url -Method GET
Write-Output $response.Length

# Adding Headers
$url = "https://cat-fact.herokuapp.com/facts"
$headers = @{
    "Content-Type" = "application/json"
}
$response = Invoke-RestMethod -Uri $url -Method GET -Headers $headers
Write-Output $response

# POST requests with JSON payload
$url = "https://api.example.com/create"
$headers = @{
    "Authorization" = "Bearer YOUR_ACCESS_TOKEN"
    "Content-Type" = "application/json"
}
$payload = @{
    "name" = "Alice"
    "email" = "alice@example.com"
} | ConvertTo-Json
$response = Invoke-RestMethod -Uri $url -Method Post -Headers $headers -Body $payload

# Error Handling
try {
    $response = Invoke-RestMethod -Uri "https://api.example.com/data" -Method Get
    Write-Output $response
}
catch {
    Write-Output "Request failed: $($_.Exception.Message)"
}

# Sessions
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.Headers["Content-Type"] = "application/json"
$response = Invoke-RestMethod -Uri "https://api.example.com/endpoint1" -Method Get -WebSession $session
