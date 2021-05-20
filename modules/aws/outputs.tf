
output "instance_ip_addr" {
  value = aws_instance.trolltower_jenkins_instance.public_ip
}