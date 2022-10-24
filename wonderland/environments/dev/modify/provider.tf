terraform {
  required_version = ">= 1.1.7"

  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.47.0"
    }
  }
}

provider "snowflake" {
  account  = var.account
  username = var.username
  password = var.password
  region   = var.region
  role     = var.role
}
