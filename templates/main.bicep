param location string = resourceGroup().location
param pAppInsightsName string
param pKind string

param pstgaccName string
param pstgSKU string
param pstgKind string
param pAppServicePlan string
param pASPSKU string
param pASPKind string
param pAppService string
param pLinuxFXVersion string

module AppInsightsDoc01 '../modules/appInsights.bicep' = {
  name: pAppInsightsName
  params: {
    pAppInsightsName: pAppInsightsName
    pKind: pKind
  }
}

module StorageAccountDoc01 '../modules/storageaccount.bicep' = {
  name: pstgaccName
  params: {
    pstgaccName: pstgaccName
    pstgKind: pstgKind 
    pstgSKU: pstgSKU
  }
}
