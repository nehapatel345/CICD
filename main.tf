
resource "google_compute_instance" "default" {
  name         = "test28"
  machine_type = "e2-small"
  project = "inavolan"
  zone         = "us-central1-c"

  tags = ["allow-firewall"]

  allow_stopping_for_update = true

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
