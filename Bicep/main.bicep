param name string = 'ckstorage0101010'
param location string = 'eastus'

var storageSku = 'Standard_LRS'

resource storageaccount 'Microsoft.Storage/storageAccounts@2020-08-01-preview' = {
  name: 'ckstorage0101010'
  location: location
  kind: 'Storage'
  sku: {
    name: storageSku
  }
  properties: {
    allowBlobPublicAccess:false
  }
}

output id string = storageaccount.id