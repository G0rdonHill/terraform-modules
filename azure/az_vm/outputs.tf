output "vm_public_ip" {
  description = "The public IP to remotely access the VM"
  value = var.public_access ? azurerm_public_ip.pubip["instance"].ip_address : null
}