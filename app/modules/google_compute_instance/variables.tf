# This is where you put your variables declaration
variables "general" {
  type = object({
    name = string
    type = string
    zone = string
    tags = map(string)
  })
  description = "(Required) Sets the base paramaters for the cloud resource"
}

variables "virtual_machine" {
  type = object({
    image     = string
    labels    = map(string)
    interface = string
    network   = string
    metadata  = map(string)
    startup   = string
  })
  description = "(Required) Sets the configurations for the virtual machine proper"
}

variables "service_account" {
  type = object({
    id     = string
    name   = string
    email  = string
    scopes = list(string)
  })
  description = "(Required) Sets the data of base resource references"
}

