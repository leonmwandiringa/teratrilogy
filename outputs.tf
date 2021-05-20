# outputs
output "vm_name" {
  value = module.gce.vm_name
}
output "vm_external_ip" {
  value =   module.gce.vm_external_ip
}
output "vm_internal_ip" {
  value = module.gce.vm_internal_ip
}