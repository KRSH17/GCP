terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    //  version = "5.26.0"
    }
  }
}

provider "google" {
  project     = "sacred-bonus-403014"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = file("C:/Users/kumarh/Downloads/sacred-bonus-403014-5f08297fa702.json")
}