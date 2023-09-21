resource "aws_route53_resolver_endpoint" "endpoint" {
  name                 = var.resolver_endpoint_name
  direction            = var.direction
  security_group_ids   = var.security_group_ids

  dynamic "ip_address" {
    for_each = var.ip_address_blocks

    content {
      subnet_id = ip_address.value.subnet_id
      ip       = try(ip_address.value.ip, null)
    }
  }
}
