provider "google" {
  project = "eighth-upgrade-436909-e3"
  region  = "us-central1"
}

resource "google_compute_instance" "centos_vm" {
  name         = "sekhar-instance"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-9"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
