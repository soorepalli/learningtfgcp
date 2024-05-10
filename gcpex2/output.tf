output "vpcid" {
  description = "VPC id will be displayed on the screen"
  value       = google_compute_network.vpc_network.id
}

output "rsid" {
  value = random_string.rstring_id.id
}
