
resource "google_compute_instance" "default" {
  name         = "test24"
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
    network = google_compute_network.vpc_network.name

  }

}

resource "google_compute_network" "vpc_network" {
  name = "vpc-network"
  project = "inavolan"
}
