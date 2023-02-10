
resource "google_compute_instance" "default" {
  name         = "test25"
  machine_type = "e2-medium"
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
    network = "terraform-network"
    subnetwork = "terraform-subnetwork-sub"

  }

}
