
variable "project_id" {
  description = "The GCP project id"
  type        = string
}

variable "name" {
  description = "The name of the Workload Identity"
  type        = string
  
  validation {
    condition     = can(regex("^[a-z](?:[-a-z0-9]{1,21}[a-z0-9])$", var.name))
    error_message = "The name must start with a lowercase letter and can contain lowercase letters, numbers, and hyphens. It must be between 2 and 22 characters long."
  } 
}

variable "sac_issuer" {
  description = "The issuer for ServiceAuthCentral"
  type        = string
}
