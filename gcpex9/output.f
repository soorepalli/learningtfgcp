output "instance_name" {
  value = google_compute_instance.vm_instance.name
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet.name
}

output "vpc_name" {
  value = google_compute_network.vpc_network.name
}
