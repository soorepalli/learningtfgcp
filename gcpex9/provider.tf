terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.25.0"
    }
  }
}

provider "google" {
  project = "cloud-practice-417601"
  region  = "us-central1"
}
