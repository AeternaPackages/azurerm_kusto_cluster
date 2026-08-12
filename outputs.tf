# --- azurerm_kusto_cluster ---
output "kusto_clusters_id" {
  description = "Map of id values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_id
}

output "kusto_clusters_allowed_fqdns" {
  description = "Map of allowed_fqdns values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_allowed_fqdns
}

output "kusto_clusters_allowed_ip_ranges" {
  description = "Map of allowed_ip_ranges values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_allowed_ip_ranges
}

output "kusto_clusters_auto_stop_enabled" {
  description = "Map of auto_stop_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_auto_stop_enabled
}

output "kusto_clusters_data_ingestion_uri" {
  description = "Map of data_ingestion_uri values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_data_ingestion_uri
}

output "kusto_clusters_disk_encryption_enabled" {
  description = "Map of disk_encryption_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_disk_encryption_enabled
}

output "kusto_clusters_double_encryption_enabled" {
  description = "Map of double_encryption_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_double_encryption_enabled
}

output "kusto_clusters_identity" {
  description = "Map of identity values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_identity
}

output "kusto_clusters_language_extension" {
  description = "Map of language_extension values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_language_extension
}

output "kusto_clusters_location" {
  description = "Map of location values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_location
}

output "kusto_clusters_name" {
  description = "Map of name values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_name
}

output "kusto_clusters_optimized_auto_scale" {
  description = "Map of optimized_auto_scale values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_optimized_auto_scale
}

output "kusto_clusters_outbound_network_access_restricted" {
  description = "Map of outbound_network_access_restricted values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_outbound_network_access_restricted
}

output "kusto_clusters_public_ip_type" {
  description = "Map of public_ip_type values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_public_ip_type
}

output "kusto_clusters_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_public_network_access_enabled
}

output "kusto_clusters_purge_enabled" {
  description = "Map of purge_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_purge_enabled
}

output "kusto_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_resource_group_name
}

output "kusto_clusters_sku" {
  description = "Map of sku values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_sku
}

output "kusto_clusters_streaming_ingestion_enabled" {
  description = "Map of streaming_ingestion_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_streaming_ingestion_enabled
}

output "kusto_clusters_tags" {
  description = "Map of tags values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_tags
}

output "kusto_clusters_trusted_external_tenants" {
  description = "Map of trusted_external_tenants values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_trusted_external_tenants
}

output "kusto_clusters_uri" {
  description = "Map of uri values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_uri
}

output "kusto_clusters_zones" {
  description = "Map of zones values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = module.kusto_clusters.kusto_clusters_zones
}

# --- azurerm_kusto_attached_database_configuration ---
output "kusto_attached_database_configurations_id" {
  description = "Map of id values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_id
}

output "kusto_attached_database_configurations_attached_database_names" {
  description = "Map of attached_database_names values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_attached_database_names
}

output "kusto_attached_database_configurations_cluster_id" {
  description = "Map of cluster_id values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_cluster_id
}

output "kusto_attached_database_configurations_cluster_name" {
  description = "Map of cluster_name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_cluster_name
}

output "kusto_attached_database_configurations_database_name" {
  description = "Map of database_name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_database_name
}

output "kusto_attached_database_configurations_database_name_override" {
  description = "Map of database_name_override values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_database_name_override
}

output "kusto_attached_database_configurations_database_name_prefix" {
  description = "Map of database_name_prefix values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_database_name_prefix
}

output "kusto_attached_database_configurations_default_principal_modification_kind" {
  description = "Map of default_principal_modification_kind values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_default_principal_modification_kind
}

output "kusto_attached_database_configurations_location" {
  description = "Map of location values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_location
}

output "kusto_attached_database_configurations_name" {
  description = "Map of name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_name
}

output "kusto_attached_database_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_resource_group_name
}

output "kusto_attached_database_configurations_sharing" {
  description = "Map of sharing values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = module.kusto_attached_database_configurations.kusto_attached_database_configurations_sharing
}

# --- azurerm_kusto_cluster_customer_managed_key ---
output "kusto_cluster_customer_managed_keys_id" {
  description = "Map of id values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = module.kusto_cluster_customer_managed_keys.kusto_cluster_customer_managed_keys_id
}

output "kusto_cluster_customer_managed_keys_cluster_id" {
  description = "Map of cluster_id values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = module.kusto_cluster_customer_managed_keys.kusto_cluster_customer_managed_keys_cluster_id
}

output "kusto_cluster_customer_managed_keys_key_name" {
  description = "Map of key_name values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = module.kusto_cluster_customer_managed_keys.kusto_cluster_customer_managed_keys_key_name
}

output "kusto_cluster_customer_managed_keys_key_vault_id" {
  description = "Map of key_vault_id values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = module.kusto_cluster_customer_managed_keys.kusto_cluster_customer_managed_keys_key_vault_id
}

output "kusto_cluster_customer_managed_keys_key_version" {
  description = "Map of key_version values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = module.kusto_cluster_customer_managed_keys.kusto_cluster_customer_managed_keys_key_version
}

output "kusto_cluster_customer_managed_keys_managed_hsm_key_id" {
  description = "Map of managed_hsm_key_id values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = module.kusto_cluster_customer_managed_keys.kusto_cluster_customer_managed_keys_managed_hsm_key_id
}

output "kusto_cluster_customer_managed_keys_user_identity" {
  description = "Map of user_identity values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = module.kusto_cluster_customer_managed_keys.kusto_cluster_customer_managed_keys_user_identity
}


