# Create a VM instance
resource "google_compute_instance" "default" {
  count = var.vm_count
  name  = "web-server-${count.index + 1}"
  #machine_type = "e2-medium"
  machine_type = var.vm_machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      #image = "debian-cloud/debian-10"
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.network_subnet.name

    access_config {
      // Include this section to give the instance a public IP
    }
  }

  metadata = {
    #foo = "bar"
    startup-script = <<-EOT
      #!/bin/bash
      echo "Web Server Installation Process" > /var/log/startup-script.log
      # Add any additional commands you want to run on startup
      apt update
      apt-get install -y apache2
      systemctl start apache2
      systemctl enable apache2"
    EOT

    ssh-keys = "${var.ssh_user}:${var.ssh_key}"

  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
