# dev provider

provider "aws" {
  region = var.aws_region
  alias  = "aws"
}

provider "azure" {
  region = var.azure_region
  alias = "azure"
}

provider "google" {
  region = var.gcp_region
  project = var.global_tags.ProjectId
  alias  = "gcp"
}