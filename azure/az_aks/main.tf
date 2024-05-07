resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.naming_convention
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  dns_prefix          = "devaks"

  default_node_pool {
    name       = var.default_node_pool.name
    node_count = var.default_node_pool.node_count
    vm_size    = var.default_node_pool.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.default_tags
}
