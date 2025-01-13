variable "scope" {
  type        = list(string)
  description = "The commercetools scope"
}


variable "name" {
  type        = string
  description = "Name of the secret"
}


variable "secret_only" {
  type        = bool
  default     = false
  description = "'true' to only store the secret in the secret manager, 'false (default) to store the object"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be used on resources."
  default     = {}
}