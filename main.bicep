// =========== main.bicep ===========
@description('Specifies the location for resources.')
param location string = 'westeurope'

// Setting target scope
targetScope = 'subscription'

// Creating resource group
resource hekatondev 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'hekatondev'
  location: location
}

// Deploying storage account using module
module stg './storage.bicep' = {
  name: 'storageDeployment'
  scope: hekatondev  // Deployed in the scope of resource group we created above
  params: {
    storageAccountName: 'storagehekaton'
  }
}
