Param([Hashtable]$parameters)
Write-Host "Creating container $($parameters.ContainerName)"
New-BcContainer @parameters
Invoke-ScriptInBcContainer $parameters.ContainerName -scriptblock { $progressPreference = 'SilentlyContinue' }
