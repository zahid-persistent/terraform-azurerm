variable "context" {
  type = object({

    application_name    = string
    environment_name    = string
    resource_group_name = string

    location            = object({
      name = string
      suffix = string
      number = number
    })

  })
}

# storage_type = "GRS"
# maximum_instance_count = 1
# minimum_instance_count = 1
variable "service_settings" {
  type = object({

    name              = string
    retention_in_days = number

    action_groups = object({
      critical = list(string)
      high     = list(string)
      moderate = list(string)
    })
  })
}
