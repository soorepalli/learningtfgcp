resource "google_compute_network" "mynetworks" {
    #count = 2
    count = var.vpc_networks
    #name = "project1"

    name = var.vpc_names[count.index]
    description = "new vpc networks"
}