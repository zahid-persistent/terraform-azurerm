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
variable "service_settings" {
  type = object({

    name              = string
    sku               = string
    retention_in_days = number

  })
}
