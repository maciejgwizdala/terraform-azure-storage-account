resource "azurerm_storage_account" "this" {
  name                      = var.name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  enable_https_traffic_only = true

  dynamic "static_website" {
    for_each = var.static_website
    content {
      index_document     = static_website.value["index_document"]
      error_404_document = static_website.value["error_404_document"]
    }
  }

  tags = var.tags
}