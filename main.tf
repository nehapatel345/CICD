
resource "google_compute_instance" "default" {
  name         = "test26"
  machine_type = "e2-medium"
  project = "inavolan"
  zone         = "us-central1-c"

  tags = ["allow-firewall"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

  }

}

