
resource "google_compute_instance" "default" {
  name         = "${var.tags.Project}-${var.tags.Environment}-vm"
  machine_type = var.instance_type
  zone         = var.instance_zone
  project = var.tags.ProjectId
  tags = ["http-server","https-server"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>Hello from TerraTrilogy on Google Cloud!</h1></body></html>' | sudo tee /var/www/html/index.html"

  network_interface {
    network = "default"
    access_config {}
  }

  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
} 