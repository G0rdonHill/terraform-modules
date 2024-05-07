variable "naming_convention" {
  type        = string
  description = "Naming convention prefix passed in from terraform root composition."
}

variable "rg_name" {
  type        = string
  description = "Resource group name where resources will reside."
}

variable "vm_size" {
  type        = string
  description = "The size SKU of the VM resource."
}

variable "vm_hostname" {
  type        = string
  description = "Computer hostname."
}

variable "vm_admin_username" {
  type        = string
  description = "Admin username for remote access."
}

variable "vm_admin_public_key" {
  type        = string
  description = "Public SSH key used for remote access."
}

variable "default_tags" {
  type        = map(any)
  description = "Default tags from root terraform compositon"
}

variable "public_access" {
  type        = bool
  description = "Enable or disable public access to the VM via SSH"
}