// =========== main.bicep ===========
@description('Specifies the location for resources.')
param location string = 'westus2'

// Setting target scope
targetScope = 'subscription'

// Creating resource group
resource hekatondevrg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'hekatondevrg'
  location: location
}
