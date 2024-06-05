# Create a firewall rule to allow SSH
resource "google_compute_firewall" "default" {
  name    = "gcptf-allow-ssh"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["80", "22"]
  }

  source_ranges = ["0.0.0.0/0"]
}