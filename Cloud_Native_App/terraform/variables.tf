variable "admin_password" {
  description = "The admin password for the VM"
  type        = string
  sensitive   = true
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}