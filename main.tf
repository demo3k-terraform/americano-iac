module "vpc" {
  source  = "app.terraform.io/tf-advanced-labs-demo3k/tuesday-network/aws"
  version = "1.0.1"
  app_prefix     = var.env_prefix
  subnet_count   = var.subnet_count
}

variable "env_prefix" {
  type = string
  description = "Required: Prefix that represents the environment"
}

variable "subnet_count" {
  type = number
  description = "Required: Number of subnets"
}