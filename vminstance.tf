resource "google_service_account" "newservacc" {
  account_id   = "sa-tf-user199"
  display_name = "Custom SA for VM Instance"
}

resource "google_compute_instance" "mywebserver" {
  name         = "${var.myvminstance}"
  machine_type = "n2-standard-2"
  #zone         = "us-central1-a"
  zone = "${var.zone}"

  tags = ["demo", "learn"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      #image = "ubuntu-os-cloud/ubuntu-2004-focal-v20220712"
      labels = {
        my_label = "value"
      }
      #size = 32
      #auto_delete = false
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    #network = "default"
    network = google_compute_network.vpc_network.id
    #network = vpcid

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    env = "dev"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.newservacc.email
    scopes = ["cloud-platform"]
  }
}