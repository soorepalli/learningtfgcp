
# Create a firewall rule to allow SSH
resource "google_compute_firewall" "default" {
  name    = "allow-ssh"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# Create a VM instance
resource "google_compute_instance" "default" {
  count = var.vm_count

  name         = "web-server-${count.index + 1}"
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name

    access_config {
      // Include this section to give the instance a public IP
    }
  }

  metadata_startup_script = <<-EOF
    #! /bin/bash
    apt update
    apt install -y apache2
    systemctl start apache2
    systemctl enable apache2
    EOF


  metadata = {
    ssh-keys = "${var.ssh_user}:${var.ssh_key}"
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
