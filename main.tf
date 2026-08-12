locals {
  kusto_clusters = { for k1, v1 in var.kusto_clusters : k1 => { allowed_fqdns = v1.allowed_fqdns, allowed_ip_ranges = v1.allowed_ip_ranges, auto_stop_enabled = v1.auto_stop_enabled, disk_encryption_enabled = v1.disk_encryption_enabled, double_encryption_enabled = v1.double_encryption_enabled, identity = v1.identity, language_extension = v1.language_extension, location = v1.location, name = v1.name, optimized_auto_scale = v1.optimized_auto_scale, outbound_network_access_restricted = v1.outbound_network_access_restricted, public_ip_type = v1.public_ip_type, public_network_access_enabled = v1.public_network_access_enabled, purge_enabled = v1.purge_enabled, resource_group_name = v1.resource_group_name, sku = v1.sku, streaming_ingestion_enabled = v1.streaming_ingestion_enabled, tags = v1.tags, trusted_external_tenants = v1.trusted_external_tenants, zones = v1.zones } }

  kusto_attached_database_configurations = merge([
    for k1, v1 in var.kusto_clusters : {
      for k2, v2 in coalesce(v1.kusto_attached_database_configurations, {}) :
      "${k1}/${k2}" => merge(v2, {
        cluster_id = module.kusto_clusters.kusto_clusters_id["${k1}"]
      })
    }
  ]...)

  kusto_cluster_customer_managed_keys = merge([
    for k1, v1 in var.kusto_clusters : {
      for k2, v2 in coalesce(v1.kusto_cluster_customer_managed_keys, {}) :
      "${k1}/${k2}" => merge(v2, {
        cluster_id = module.kusto_clusters.kusto_clusters_id["${k1}"]
      })
    }
  ]...)
}

module "kusto_clusters" {
  source         = "git::https://github.com/AeternaModules/azurerm_kusto_cluster.git?ref=v5.0.0"
  kusto_clusters = local.kusto_clusters
}

module "kusto_attached_database_configurations" {
  source                                 = "git::https://github.com/AeternaModules/azurerm_kusto_attached_database_configuration.git?ref=v5.0.0"
  kusto_attached_database_configurations = local.kusto_attached_database_configurations
  depends_on                             = [module.kusto_clusters]
}

module "kusto_cluster_customer_managed_keys" {
  source                              = "git::https://github.com/AeternaModules/azurerm_kusto_cluster_customer_managed_key.git?ref=v5.0.0"
  kusto_cluster_customer_managed_keys = local.kusto_cluster_customer_managed_keys
  depends_on                          = [module.kusto_clusters]
}

