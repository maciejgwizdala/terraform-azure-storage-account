variable "name" {
  type        = string
  description = "Azure Storage Account's name"
}

variable "location" {
  type        = string
  description = "Location of Azure resources"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name for Azure resources"
}

variable "account_tier" {
  type        = string
  description = "Tier to use for this Azure Storage Account"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Type of replication to use for this Azure Storage Account"
  default     = "LRS"
}

variable "static_website" {
  type        = list(map(string))
  description = "Static website configuration"
  default = [{
    "index_document"     = "index.html"
    "error_404_document" = "index.html"
  }]
}

variable "tags" {
  type        = map(string)
  description = "Tags which could be added to Azure Storage Account"
  default     = {}
}