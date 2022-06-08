# terraform-azure-storage-account
Terraform module for creating Azure Storage Account

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Azure Storage Account's name | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location of Azure resources | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource group name for Azure resources | `string` | n/a | yes |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Tier to use for this Azure Storage Account | `string` | `"Standard"` | no |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Type of replication to use for this Azure Storage Account | `string` | `"LRS"` | no |
| <a name="input_static_website"></a> [static\_website](#input\_static\_website) | Static website configuration | `list(map(string))` | <pre>[<br>  {<br>    "error_404_document": "index.html",<br>    "index_document": "index.html"<br>  }<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags which could be added to Azure Storage Account | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_blob_connection_string"></a> [blob\_connection\_string](#output\_blob\_connection\_string) | n/a |
| <a name="output_web_url"></a> [web\_url](#output\_web\_url) | n/a |
