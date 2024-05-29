module "gke_cluster" {
  source = "./modules/gke_cluster"

  cluster_name = var.cluster_name
  region       = var.region
  project_id   = var.project_id
  node_count   = var.node_count
  machine_type = var.machine_type
  network      = var.network
  subnetwork   = var.subnetwork
}

output "kubeconfig" {
  value = module.gke_cluster.kubeconfig
}