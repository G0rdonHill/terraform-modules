variable "naming_convention" {
  type        = string
  description = "Naming convention prefix passed in from terraform root composition."
}

variable "rg_name" {
  type        = string
  description = "Resource group name where resources will reside."
}

variable "default_tags" {
  type        = map(any)
  description = "Default tags from root terraform compositon."
}

variable "default_node_pool" {
  type = object({
    name       = string
    node_count = number
    vm_size    = string
  })
  description = "Configuration attributes of the default node pool."
}