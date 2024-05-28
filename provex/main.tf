resource "google_compute_firewall" "default" {
  name    = "allow-http-ssh"
  #network = "default-allow-http"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["80", "22"]
  }

  target_tags = ["http-web-server"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_instance" "vminstance" {
  name         = "webserver"
  machine_type = "f1-micro"
  #zone         = "var.zone"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    #network = "default"
    network = google_compute_network.vpc_network.name
    access_config {
      
    }
  }

  service_account {
    email  = "default"
    scopes = ["cloud-platform"]
  }

  #tags = ["http-web-server"]
  tags = google_compute_firewall.default.target_tags

  metadata = {
    ssh-keys = "${var.ssh_user}:${var.ssh_key}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y apache2",
      "sudo systemctl start apache2",
      "sudo systemctl enable apache2"
    ]

    connection {
      type        = "ssh"
      user        = "rsoorepalli"
      private_key = file("./gcptf")
      host        = google_compute_instance.vminstance.network_interface[0].access_config[0].nat_ip
    }
  }
  
  provisioner "local-exec" { 
    #command = "chrome ${google_compute_instance.vminstance.network_interface[0].access_config[0].nat_ip}"
    command = "chrome ${self.network_interface[0].access_config[0].nat_ip}"
  } 
}
