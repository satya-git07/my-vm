provider "google" {
project = "eighth-upgrade-436909-e3"
region = "us-central1"
}

resource "google_computer_instance" "centos_vm" {
name = "satya_first_vm"
machine_type = "e2_medium"
zone = "us-central1-a"
} 

boot_disk {
initialize_params{
  image = "centos-cloud/centos-stream-9"
}
}
  network_interface {
    network = "default"
    access_config {
    }
  }
}
