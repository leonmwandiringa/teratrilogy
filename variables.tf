# variables

///////// Global ///////
variable "global_tags" {
  description = "All Cloud network global tags for Teratrilogy"
  default = {
    "Author"      = "Leon Mwandiringa",
    "Environment" = "development",
    "Project"     = "teratrilogy",
    "ProjectId" = "carbon-scene-314313",
    "Provisioner" = "terraform"
  }
}
variable "aws_region" {
  type        = string
  description = "global region"
  default     = "{{AWS_REGION}}"
}
variable "azure_region" {
  type        = string
  description = "global region"
  default     = "{{AZURE_REGION}}"
}
variable "gcp_region" {
  type        = string
  description = "global region"
  default     = "us-east1"
}

variable "aws_az" {
  type        = string
  description = "global region"
  default     = "{{AWS_AZ}}"
}
variable "azure_az" {
  type        = string
  description = "global region"
  default     = "{{AZURE_AZ}}"
}
variable "gcp_az" {
  type        = string
  description = "global region"
  default     = "us-east1-c"
}

//////////////// GCP VARIABLES //////////////
# define the GCP authentication file
variable "gcp_instance_type" {
  type = string
  default = "e2-medium"
}
