
provider "google" {
  project = "lyrical-bus-452711-c5"
  region  = "us-central1"
}

resource "google_compute_instance" "centos_vm" {
  name         = "my-vm2"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

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
terraform {
  backend "gcs" {
    bucket  = "sang-jin-woo"  # Replace with your GCS bucket name
    prefix  = "terraform/state"         # Folder inside the bucket
  }
}
