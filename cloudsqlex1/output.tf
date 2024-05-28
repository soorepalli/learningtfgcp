output "vpcid" {
  description = "VPC id will be displayed on the screen"
  value       = google_compute_network.vpc_network.id
}

output "database_name" {
  description = "database name"
  value       = google_sql_database.default.name

}

output "user_name" {
  value = google_sql_user.default.name
}