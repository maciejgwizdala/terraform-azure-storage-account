output "blob_connection_string" {
  sensitive = true
  value     = azurerm_storage_account.this.primary_connection_string
}

output "web_url" {
  value = azurerm_storage_account.this.primary_web_endpoint
}
