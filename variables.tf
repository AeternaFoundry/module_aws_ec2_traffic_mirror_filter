variable "ec2_traffic_mirror_filters" {
  description = <<EOT
Map of ec2_traffic_mirror_filters, attributes below
Optional:
    - description
    - network_services
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    description      = optional(string)
    network_services = optional(set(string))
    region           = optional(string)
    tags             = optional(map(string))
    tags_all         = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ec2_traffic_mirror_filters : (
        v.network_services == null || (alltrue([for x in v.network_services : contains(["amazon-dns"], x)]))
      )
    ])
    error_message = "must be one of: amazon-dns"
  }
}

