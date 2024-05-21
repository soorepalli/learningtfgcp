# Create a network
resource "google_compute_network" "vpc_network" {
  name        = "terraform-network"
  description = "Client99"
}
