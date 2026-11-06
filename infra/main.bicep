resource appPlan 'Microsoft.Web/serverfarms@2026-02-01' = {
  name: 'asp-demo-dev'
  location: resourceGroup().location
  sku: {
    name: 'B1'
  }
}

resource webApp 'Microsoft.Web/sites@2026-01-01' = {
  name: 'app-demo-dev'
  location: resourceGroup().location
}

targetScope = 'resourceGroup'
