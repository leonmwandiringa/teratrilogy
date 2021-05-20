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
  default     = "us-east-2"
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
  default     = "us-east-2a"
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


////////////////// AWS VARIABLES /////////////
variable "instance_sg_rules_ingress" {
  description = "List of maps of default seurity group rules ingress"
  type        = list(map(string))

  default = [
    {
      description = "HTTP"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

variable "instance_sg_rules_egress" {
  description = "List of maps of default seurity group rules egress"
  type        = list(map(string))
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}
variable "instance_ami" {
  default = "ami-0600b1bef20a0c212"
}
variable "instance_type" {
  default = "t3.small"
}
