# Create a network
resource "google_compute_network" "vpc_network" {
  #name        = "gcptfpractise"
  name         = "${lower(var.company)}-${lower(var.app_name)}-${var.environment}-vpc"
  description  = "Practise Terraform with GCP"
  routing_mode = "GLOBAL"
}

# create public subnet
resource "google_compute_subnetwork" "network_subnet" {
  name          = "${lower(var.company)}-${lower(var.app_name)}-${var.environment}-subnet"
  ip_cidr_range = var.network-subnet-cidr
  network       = google_compute_network.vpc_network.name
  region        = var.region
}