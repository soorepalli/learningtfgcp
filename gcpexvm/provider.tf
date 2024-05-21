terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
  # credentials = file("myaccount.json")
  #project = "cloud-practice-417601"
  project = var.project
  region  = var.region
  #region = "asia-south1"
  zone = var.zone
  #zone = "asia-south1-a"

}