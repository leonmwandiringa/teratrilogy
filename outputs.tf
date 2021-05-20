# outputs

output "gcp_vm_external_ip" {
  value = module.gce.vm_external_ip
}

output "aws_instance_ip_addr" {
  value = module.ec2.instance_ip_addr
}