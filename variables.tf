variable "storage_containers" {
  description = <<EOT
Map of storage_containers, attributes below
Required:
    - name
Optional:
    - container_access_type
    - default_encryption_scope
    - encryption_scope_override_enabled
    - metadata
    - storage_account_id
    - storage_account_name
EOT

  type = map(object({
    name                              = string
    container_access_type             = optional(string)
    default_encryption_scope          = optional(string)
    encryption_scope_override_enabled = optional(bool)
    metadata                          = optional(map(string))
    storage_account_id                = optional(string)
    storage_account_name              = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_storage_container's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.StorageContainerName] !regexp.MustCompile(`^\$root$|^\$web$|^[0-9a-z-]+$`).MatchString(value)
  # path: name
  #   source:    [from validate.StorageContainerName] len(value) < 3 || len(value) > 63
  # path: name
  #   source:    [from validate.StorageContainerName] regexp.MustCompile(`^-`).MatchString(value)
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: container_access_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: default_encryption_scope
  #   source:    [from validate.StorageEncryptionScopeName] !regexp.MustCompile("^[0-9a-zA-Z]{4,63}$").MatchString(input)
  # path: metadata
  #   source:    [from validate.MetaDataKeys] isCSharpKeyword
  # path: metadata
  #   source:    [from validate.MetaDataKeys] !regexp.MustCompile(`^([a-z_]{1}[a-z0-9_]{1,})$`).MatchString(k)
}

