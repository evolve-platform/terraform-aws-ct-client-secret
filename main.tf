resource "commercetools_api_client" "this" {
  name  = var.name
  scope = var.scope
}

resource "aws_secretsmanager_secret" "this" {
  name = "${var.name}-commercetools"
  tags = var.tags
}

resource "aws_secretsmanager_secret_version" "this" {
  secret_id = aws_secretsmanager_secret.this.id

  secret_string = var.secret_only ? commercetools_api_client.this.secret : jsonencode({
    clientId     = commercetools_api_client.this.id
    clientSecret = commercetools_api_client.this.secret
    scope        = join(" ", commercetools_api_client.this.scope)
  })
}
