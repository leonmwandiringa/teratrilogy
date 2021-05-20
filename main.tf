# main init

module "gce" {
  source                   = "./modules/gcp"
  instance_type   = var.gcp_instance_type
  instance_zone = var.gcp_az
  userdata = "${file("./scripts/userdata.sh")}"

  tags = var.global_tags
}
