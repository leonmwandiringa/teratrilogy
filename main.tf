# main init

module "gce" {
  source                   = "./modules/gcp"
  instance_type   = var.gcp_instance_type
  instance_zone = var.gcp_az
  providers = {
    google = google.gcp
  }

  tags = var.global_tags
}


module "ec2" {
  source = "./modules/aws"
  global_tags = "${var.global_tags}"
  instance_sg_rules_egress = "${var.instance_sg_rules_egress}"
  instance_sg_rules_ingress = "${var.instance_sg_rules_ingress}"
  # private_ip = "${var.instance_private_ip}"
  instance_type = "${var.instance_type}"
  instance_ami = "${var.instance_ami}"
  az = var.aws_az
  providers = {
    aws = aws.aws
  }
}