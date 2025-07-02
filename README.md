# AWS Commercetools client secret Terraform module

Terraform module to manage a Commercetools client in AWS Secrets Manager.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | => 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | => 5.0 |
| <a name="provider_commercetools"></a> [commercetools](#provider\_commercetools) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [commercetools_api_client.this](https://registry.terraform.io/providers/labd/commercetools/latest/docs/resources/api_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the secret | `string` | n/a | yes |
| <a name="input_scope"></a> [scope](#input\_scope) | The commercetools scope | `list(string)` | n/a | yes |
| <a name="input_secret_only"></a> [secret\_only](#input\_secret\_only) | 'true' to only store the secret in the secret manager, 'false (default) to store the object | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be used on resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_id"></a> [client\_id](#output\_client\_id) | The commercetools client id |
| <a name="output_scope"></a> [scope](#output\_scope) | The commercetools scope |
| <a name="output_secret_arn"></a> [secret\_arn](#output\_secret\_arn) | The ARN of the secret |
| <a name="output_secret_name"></a> [secret\_name](#output\_secret\_name) | The name of the secret |
<!-- END_TF_DOCS -->