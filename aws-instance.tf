#======================================================================
resource "aws_instance" "server" {

  for_each = local.servers

  ami           = each.value.ami
  instance_type = each.value.instance_type

  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name = var.key_name

  root_block_device {
    volume_size = each.value.root_volume
    volume_type = "gp3"
  }

  tags = {
    Name      = each.value.name
    ManagedBy = "Terraform"
  }
}

 