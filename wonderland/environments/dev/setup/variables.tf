variable "region" {
  description = "region"
  type        = string
}

variable "username" {
  description = "username"
  type        = string
  sensitive   = true
}

variable "account" {
  description = "account"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "password"
  type        = string
  sensitive   = true
}

variable "role" {
  description = "role"
  type        = string
  default     = "accountadmin"
}

variable "data_retention_days" {
  description = "data_retention_days"
  type        = number
  default     = 1
}
