resource "google_container_cluster" "default" {
    name = var.cluster_name
    location = var.region
    project = var.project_id

    #remove_default_node_pool = true
    initial_node_count = 1
    enable_autopilot = true

    network = var.network
    subnetwork = var.subnetwork
    #enable_autopilot = true
    

    ip_allocation_policy {
      #use_ip_address = true
    }

    master_auth {
      #username = ""
      #password = ""

      client_certificate_config {
        issue_client_certificate = false
      }
    }
  
}


resource "google_container_node_pool" "primary_nodes" {
  cluster = google_container_cluster.default.name
  location = var.region
  project = var.project_id
  node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    disk_size_gb = 10

    oauth_scopes = [
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
        "https://www.googleapis.com/auth/servicecontrol",
        "https://www.googleapis.com/auth/service.management.readonly",
        "https://www.googleapis.com/auth/trace.append",
      ]
  }  
}