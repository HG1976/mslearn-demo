@description('Specifies the location for resources.')
param location string = 'westeurope'

targetScope = 'subscription'

resource hekatondevrg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'hekatondevrg'
  location: location
}

@description('Specifies the location for resources.')
module hekatonstorage './storageAccount.bicep' = {
  name: 'storageDeployment'
  scope: hekatondevrg
  params: {
    storageAccountName: 'hekatonstorage'
  }
}
