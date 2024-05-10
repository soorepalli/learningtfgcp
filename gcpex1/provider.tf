terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
  # credentials = file("myaccount.json")
  project = "cloud-practice-417601"
  region = "asia-south1"
  zone = "asia-south1-a"
}