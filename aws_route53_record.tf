resource "aws_route53_record" "records" {
  for_each = aws_instance.server

  zone_id = var.private_zone_id
  name    = "${each.key}.internal.svkm"
  type    = "A"
  ttl     = 300
  records = [each.value.private_ip]
}
