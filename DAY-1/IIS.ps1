import-module servermanager
add-windowsfeature web-server -includeallsubfeature
Set-Content -Path "C:\inetpub\wwwroot\Default.html" -Value "<html><body><h1>IIS is installed and running! 1 $env:COMPUTERNAME</h1></body></html>" -Encoding UTF8
