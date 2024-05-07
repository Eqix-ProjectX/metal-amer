variable "project_id" {
  description = "Metal project ID"
  default     = ""
}

variable "metal_cluster" {
  type = map(object({
    plan             = string
    metro            = string
    operating_system = string
    billing_cycle    = string
    region           = string
  }))
}
