# Create a Log Analytics Workspace

## Azure Resources Created

[azurerm_log_analytics_workspace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace)

## Inputs 

- context - This is the output of the resource-group module.  Which provides azure location and resource group to provision infrastructure in.
** Service Settings

- service_settings
  - name - Name of workspace, this will be prefixed with 'log-' as per Microsoft suggested naming standards.
  - sku - The only current sku is PerGB2018, the rest are legacy
  - retention_in_days - between 30 and 730

## Outputs 
  - id - The Log Analytics workspace ID
  - name - The resultant name of the workspace
  - primary_shared_key - 

|Setting|Options|
|sku|Free, PerNode, Premium, Standard, Standalone, Unlimited, PerGB2018|


** Naming Standards

https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging