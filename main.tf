
resource "google_compute_network" "vpc_network" {
  #name = "project99"
  name                    = var.vpc_network_name
  description             = "learning terraform in this network"
  auto_create_subnetworks = false
  #mtu = 1460
}


resource "random_string" "rstring_id" {
  length = 20
}



