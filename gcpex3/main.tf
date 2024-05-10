resource "random_string" "rsid" {
  length = 8
}

resource "google_storage_bucket" "mystatefiles" {

  name     = var.bucketname
  location = var.region
  project  = var.project
  force_destroy = false
}