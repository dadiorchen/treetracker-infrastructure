variable "host" {
  type = string
}

variable "password" {
  type = string
}

terraform {
  # Ref: https://developer.hashicorp.com/terraform/tutorials/configuration-language/versions#review-example-configuration 
  required_version = "~> 1.4.6"

  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.11.0"
    }
  }
}

provider "postgresql" {
  alias    = "integration_test"
  database = "integration_test"

  host            = var.host
  port            = 25060
  username        = "doadmin"
  password        = var.password
  sslmode         = "require"
  connect_timeout = 15
  superuser       = false
}

provider "postgresql" {
  alias    = "treetracker"
  database = "treetracker"

  host            = var.host
  port            = 25060
  username        = "doadmin"
  password        = var.password
  sslmode         = "require"
  connect_timeout = 15
  superuser       = false
}

provider "postgresql" {
  alias    = "data_pipeline"
  database = "data_pipeline"

  host            = var.host
  port            = 25060
  username        = "doadmin"
  password        = var.password
  sslmode         = "require"
  connect_timeout = 15
  superuser       = false
}

