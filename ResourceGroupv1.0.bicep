@description('Specifies the location for resources.')
param location string = 'westeurope'

targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
 
  name: 'hekaton-dev-rg'
  location: location
}
