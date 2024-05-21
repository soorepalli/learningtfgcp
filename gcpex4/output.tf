output "vpc_nework_names" {
    value = [for network in google_compute_network.mynetworks : network.name]
    description = "newly created network names"
}