# Create a network
resource "google_compute_network" "vpc_network" {
  name        = var.vpc_network_name
  description = "SAPCO IT SOLUTIONS"
}
