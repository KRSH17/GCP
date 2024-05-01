resource "google_compute_instance" "example_instance" {
  name         = "example-instance11"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
 
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
 
  network_interface {
    network = "default"
    access_config {}
  }
}