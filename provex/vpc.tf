# Create a network
resource "google_compute_network" "vpc_network" {
  name        = "tfdemo"
  description = "Client99"

/* lifecycle {
    prevent_destroy = true
  }
  */
}
