
resource "aws_instance" "default" {
  key_name      = var.instance_keys
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id = var.public_subnet_id
  security_groups = [aws_security_group.instance_sg.id]
  private_ip = var.private_ip

  root_block_device {
      volume_size = "20"
      volume_type = "gp2"
  }
  user_data = var.user_data

  tags = merge(
    var.global_tags,
    {
      "Name" = "instance"
    },
  )
}
