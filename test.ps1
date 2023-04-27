Get-Content -Path  /home/knoldus/TechHubs/Techhub-Keys-value/test.json `  # You can pass the location where the json file is store
| ConvertFrom-Json `
| Select-Object -ExpandProperty resources `
| Select-Object -ExpandProperty properties `
| Where-Object { $_.cloud -eq "Azure" } `   
| Group-Object -Property "resourceType" `  #Here i am passing Key name resourceType
| Select-Object -Property Name
