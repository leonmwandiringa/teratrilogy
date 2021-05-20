# main init

module "gce" {
  source                   = "./modules/gcp"
  instance_type   = var.gcp_instance_type
  instance_zone = var.gcp_az

  tags = var.global_tags
}
