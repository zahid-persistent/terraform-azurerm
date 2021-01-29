resource "azurerm_application_insights" "endpoint" {

  name                = "appi-${var.service_settings.name}"
  location            = var.context.location.name
  resource_group_name = var.context.resource_group_name
  application_type    = "web"

  retention_in_days   = var.service_settings.retention_in_days

  tags = {
    app = var.context.application_name
    env = var.context.environment_name
  }
  
}