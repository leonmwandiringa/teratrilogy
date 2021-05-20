
output "instance_ip_addr" {
  value = aws_instance.default.public_ip
}