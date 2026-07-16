output "storage_containers_id" {
  description = "Map of id values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_containers_container_access_type" {
  description = "Map of container_access_type values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.container_access_type if v.container_access_type != null && length(v.container_access_type) > 0 }
}
output "storage_containers_default_encryption_scope" {
  description = "Map of default_encryption_scope values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.default_encryption_scope if v.default_encryption_scope != null && length(v.default_encryption_scope) > 0 }
}
output "storage_containers_encryption_scope_override_enabled" {
  description = "Map of encryption_scope_override_enabled values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.encryption_scope_override_enabled if v.encryption_scope_override_enabled != null }
}
output "storage_containers_has_immutability_policy" {
  description = "Map of has_immutability_policy values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.has_immutability_policy if v.has_immutability_policy != null }
}
output "storage_containers_has_legal_hold" {
  description = "Map of has_legal_hold values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.has_legal_hold if v.has_legal_hold != null }
}
output "storage_containers_metadata" {
  description = "Map of metadata values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "storage_containers_name" {
  description = "Map of name values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_containers_resource_manager_id" {
  description = "Map of resource_manager_id values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.resource_manager_id if v.resource_manager_id != null && length(v.resource_manager_id) > 0 }
}
output "storage_containers_storage_account_id" {
  description = "Map of storage_account_id values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}
output "storage_containers_storage_account_name" {
  description = "Map of storage_account_name values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.storage_account_name if v.storage_account_name != null && length(v.storage_account_name) > 0 }
}
output "storage_containers_url" {
  description = "Map of url values across all storage_containers, keyed the same as var.storage_containers"
  value       = { for k, v in azurerm_storage_container.storage_containers : k => v.url if v.url != null && length(v.url) > 0 }
}

