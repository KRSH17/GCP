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



# Define the VPC network
resource "google_compute_network" "example_vpc" {
  name                    = "example-vpc"
  auto_create_subnetworks = false  # Disable automatic subnet creation
}

# Define a subnet within the VPC network
resource "google_compute_subnetwork" "example_subnet" {
  name          = "example-subnet"
  ip_cidr_range = "10.40.0.0/25"
  region        = "us-central1"
  network       = google_compute_network.example_vpc.name
}
resource "google_compute_subnetwork" "example_subnet2" {
  name          = "example-subnettwo"
  ip_cidr_range = "10.40.0.128/25"
  region        = "us-central1"
  network       = google_compute_network.example_vpc.name
}
