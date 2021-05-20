resource "aws_default_subnet" "default" {
  availability_zone = var.az

  tags = {
    Name = "Default subnet for us-west-2a"
  }
}