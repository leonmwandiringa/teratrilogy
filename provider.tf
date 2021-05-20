# dev provider

# provider "aws" {
#   region = var.aws_region
# }

# provider "azure" {
#   region = var.azure_region
# }

provider "google" {
  region = var.gcp_region
  project = var.global_tags.Project
}