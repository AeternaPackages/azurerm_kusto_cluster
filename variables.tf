variable "kusto_clusters" {
  description = <<EOT
Map of kusto_clusters, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku (block)
Optional:
    - allowed_fqdns
    - allowed_ip_ranges
    - auto_stop_enabled
    - disk_encryption_enabled
    - double_encryption_enabled
    - outbound_network_access_restricted
    - public_ip_type
    - public_network_access_enabled
    - purge_enabled
    - streaming_ingestion_enabled
    - tags
    - trusted_external_tenants
    - zones
    - identity (block)
    - language_extension (block)
    - optimized_auto_scale (block)
Nested kusto_attached_database_configurations (azurerm_kusto_attached_database_configuration):
    Required:
        - cluster_name
        - database_name
        - location
        - name
        - resource_group_name
    Optional:
        - database_name_override
        - database_name_prefix
        - default_principal_modification_kind
        - sharing (block)
Nested kusto_cluster_customer_managed_keys (azurerm_kusto_cluster_customer_managed_key):
    Optional:
        - key_name
        - key_vault_id
        - key_version
        - managed_hsm_key_id
        - user_identity
EOT

  type = map(object({
    location                           = string
    name                               = string
    resource_group_name                = string
    allowed_fqdns                      = optional(list(string))
    allowed_ip_ranges                  = optional(list(string))
    auto_stop_enabled                  = optional(bool)
    disk_encryption_enabled            = optional(bool)
    double_encryption_enabled          = optional(bool)
    outbound_network_access_restricted = optional(bool)
    public_ip_type                     = optional(string)
    public_network_access_enabled      = optional(bool)
    purge_enabled                      = optional(bool)
    streaming_ingestion_enabled        = optional(bool)
    tags                               = optional(map(string))
    trusted_external_tenants           = optional(list(string))
    zones                              = optional(set(string))
    sku = object({
      capacity = optional(number)
      name     = string
    })
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    language_extension = optional(list(object({
      image = string
      name  = string
    })))
    optimized_auto_scale = optional(object({
      maximum_instances = number
      minimum_instances = number
    }))
    kusto_attached_database_configurations = optional(map(object({
      cluster_name                        = string
      database_name                       = string
      location                            = string
      name                                = string
      resource_group_name                 = string
      database_name_override              = optional(string)
      database_name_prefix                = optional(string)
      default_principal_modification_kind = optional(string)
      sharing = optional(object({
        external_tables_to_exclude    = optional(set(string))
        external_tables_to_include    = optional(set(string))
        functions_to_exclude          = optional(set(string))
        functions_to_include          = optional(set(string))
        materialized_views_to_exclude = optional(set(string))
        materialized_views_to_include = optional(set(string))
        tables_to_exclude             = optional(set(string))
        tables_to_include             = optional(set(string))
      }))
    })))
    kusto_cluster_customer_managed_keys = optional(map(object({
      key_name           = optional(string)
      key_vault_id       = optional(string)
      key_version        = optional(string)
      managed_hsm_key_id = optional(string)
      user_identity      = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.kusto_clusters) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.kusto_clusters : [for kk in keys(coalesce(v0.kusto_attached_database_configurations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.kusto_clusters : [for kk in keys(coalesce(v0.kusto_cluster_customer_managed_keys, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
