variable "resolver_endpoint_name" {
  description = "Name of the Route 53 Resolver Endpoint"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs for the Resolver Endpoint"
  type        = list(string)
}

variable "direction" {
  description = "Direction for the Resolver Endpoint"
  type        = string
}

variable "ip_address_blocks" {
  description = "List of IP address blocks to associate with the Resolver Endpoint"
  type        = list(object({
    subnet_id = string
    ip       = string
  }))
}
