output "storage_containers" {
  description = "All storage_container resources"
  value       = azurerm_storage_container.storage_containers
}
output "storage_containers_container_access_type" {
  description = "List of container_access_type values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.container_access_type]
}
output "storage_containers_default_encryption_scope" {
  description = "List of default_encryption_scope values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.default_encryption_scope]
}
output "storage_containers_encryption_scope_override_enabled" {
  description = "List of encryption_scope_override_enabled values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.encryption_scope_override_enabled]
}
output "storage_containers_has_immutability_policy" {
  description = "List of has_immutability_policy values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.has_immutability_policy]
}
output "storage_containers_has_legal_hold" {
  description = "List of has_legal_hold values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.has_legal_hold]
}
output "storage_containers_metadata" {
  description = "List of metadata values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.metadata]
}
output "storage_containers_name" {
  description = "List of name values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.name]
}
output "storage_containers_resource_manager_id" {
  description = "List of resource_manager_id values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.resource_manager_id]
}
output "storage_containers_storage_account_id" {
  description = "List of storage_account_id values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.storage_account_id]
}
output "storage_containers_storage_account_name" {
  description = "List of storage_account_name values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.storage_account_name]
}
output "storage_containers_url" {
  description = "List of url values across all storage_containers"
  value       = [for k, v in azurerm_storage_container.storage_containers : v.url]
}

