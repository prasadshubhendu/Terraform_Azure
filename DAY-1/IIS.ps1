try {
    Import-Module ServerManager
    Add-WindowsFeature Web-Server -IncludeAllSubFeature
    Set-Content -Path "C:\inetpub\wwwroot\Default.html" -Value "Hello World"
}
catch {
    Write-Host "Error occurred: $_"
}
finally {
    Exit 0
}
