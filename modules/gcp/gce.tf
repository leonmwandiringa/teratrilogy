
# Create VM #1
resource "google_compute_instance" "teratrilogy_gcp" {
  name         = "${var.tags.Project}-${var.tags.Environment}-vm"
  machine_type = var.instance_type
  zone         = var.instance_zone
  project = var.tags.Project
  # tags         = merge(
  #   var.tags,
  #   {
  #     "Name" = "teratrilogy_gcp_instance"
  #   }
  # )

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential apache2"

  network_interface {
    network = "default"
    access_config {}
  }
} 