output "public_ips" {
  description = "Public IPs of all EC2 instances"
  value = {
    for name, instance in aws_instance.server :
    name => instance.public_ip
  }
}
 
output "private_dns_records" {
  description = "Route53 DNS records and mapped private IPs"

  value = {
    for name, instance in aws_instance.server :
    name => {
      dns_name   = aws_route53_record.records[name].fqdn
      private_ip = instance.private_ip
    }
  }
}