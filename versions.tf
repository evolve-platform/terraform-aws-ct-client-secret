terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=> 5.0"
    }
    commercetools = {
      source = "labd/commercetools"
    }
  }
}
