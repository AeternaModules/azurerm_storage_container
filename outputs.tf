output "storage_containers_id" {
  description = "Map of id values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.id }
}
output "storage_containers_container_access_type" {
  description = "Map of container_access_type values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.container_access_type }
}
output "storage_containers_default_encryption_scope" {
  description = "Map of default_encryption_scope values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.default_encryption_scope }
}
output "storage_containers_encryption_scope_override_enabled" {
  description = "Map of encryption_scope_override_enabled values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.encryption_scope_override_enabled }
}
output "storage_containers_has_immutability_policy" {
  description = "Map of has_immutability_policy values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.has_immutability_policy }
}
output "storage_containers_has_legal_hold" {
  description = "Map of has_legal_hold values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.has_legal_hold }
}
output "storage_containers_metadata" {
  description = "Map of metadata values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.metadata }
}
output "storage_containers_name" {
  description = "Map of name values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.name }
}
output "storage_containers_resource_manager_id" {
  description = "Map of resource_manager_id values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.resource_manager_id }
}
output "storage_containers_storage_account_id" {
  description = "Map of storage_account_id values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.storage_account_id }
}
output "storage_containers_storage_account_name" {
  description = "Map of storage_account_name values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.storage_account_name }
}
output "storage_containers_url" {
  description = "Map of url values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.url }
}

