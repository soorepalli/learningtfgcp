output "kubeconfig" {
    value = google_container_cluster.default.endpoint
}