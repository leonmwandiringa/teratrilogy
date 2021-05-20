
resource "aws_instance" "default" {
  # key_name      = var.instance_keys
  ami           = var.instance_ami
  instance_type = var.instance_type
  security_groups = ["${aws_security_group.default.id}"]
  subnet_id = aws_default_subnet.default.id
  # private_ip = var.private_ip
  depends_on = [
    aws_security_group.default
  ]

  root_block_device {
      volume_size = "20"
      volume_type = "gp2"
  }
  user_data = <<EOF
#! /bin/bash
sudo apt-get update 
sudo apt-get install apache2 -y 
sudo echo '<!doctype html><html><body><h1>Hello from TerraTrilogy on AMAZON Web Service!</h1></body></html>' > /var/www/html/index.html
EOF

  tags = merge(
    var.global_tags,
    {
      "Name" = "instance"
    },
  )
}
