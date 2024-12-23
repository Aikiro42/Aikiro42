Administrator Powershell
```
Get-AppxPackage -AllUsers *CoPilot* | Remove-AppxPackage -AllUsers
Get-AppxProvisionedPackage -Online | where-object {$_.PackageName -like "*Copilot*"} | Remove-AppxProvisionedPackage -online
```
