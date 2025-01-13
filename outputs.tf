output "secret_name" {
  description = "The name of the secret"
  value       = aws_secretsmanager_secret.this.name
}

output "scope" {
  description = "The commercetools scope"
  value       = commercetools_api_client.this.scope
}

output "client_id" {
  description = "The commercetools client id"
  value       = commercetools_api_client.this.id
}

output "secret_arn" {
  description = "The ARN of the secret"
  value       = aws_secretsmanager_secret.this.arn
}
