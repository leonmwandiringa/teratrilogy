output "vm_name" {
  value = google_compute_instance.default.name
}
output "vm_external_ip" {
  value =   google_compute_instance.default.network_interface.0.access_config.0.nat_ip
}
output "vm_internal_ip" {
  value = google_compute_instance.default.network_interface.0.network
}