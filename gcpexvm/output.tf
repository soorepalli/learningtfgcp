# Output the external IP of the instance
output "instance_ip" {
  description = "The public IP address of the compute instance"
  #value       = google_compute_instance.default.network_interface[0].access_config[0].nat_ip

  value = [for instance in google_compute_instance.default : instance.network_interface[0].access_config[0].nat_ip]
}