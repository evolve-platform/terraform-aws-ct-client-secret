output "secret_name" {
  value = aws_secretsmanager_secret.this.name
}

output "scope" {
  value = commercetools_api_client.this.scope
}

output "client_id" {
  value = commercetools_api_client.this.id
}

output "secret_arn" {
  value = aws_secretsmanager_secret.this.arn
}
