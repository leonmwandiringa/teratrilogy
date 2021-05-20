resource "aws_eip" "default" {
  vpc = true
  instance = aws_instance.default.id
  associate_with_private_ip = var.private_ip
  tags = merge(
    var.global_tags,
    {
      "Name" = "Instance EIP"
    },
  )
  depends_on = [
    aws_instance.default,
  ]
}