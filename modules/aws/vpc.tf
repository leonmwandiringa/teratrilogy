resource "aws_default_vpc" "default" {
  tags = merge(
      var.global_tags,
    {
        Name = "Default VPC"
    }
  )
}