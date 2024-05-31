provider "google" {
    project = var.project_id
    region = var.region  
}

resource "google_storage_bucket" "webhost" {
    name = "gcptfwebhostbucket"
    location = "US"
    website {
        main_page_suffix = "index.html"
        not_found_page = "404.html"
    }
    force_destroy = true  
}

resource "google_storage_bucket_object" "index" {
    name = "index.html"
    bucket = google_storage_bucket.webhost.name
    source = "./index.html"
    content_type = "text/html"
  
}

resource "google_storage_bucket_object" "notexist" {
    name = "404.html"
    bucket = google_storage_bucket.webhost.name
    source = "./404.html"
    content_type = "text/html"
  
}

resource "google_storage_bucket_iam_member" "public_access" {
    bucket = google_storage_bucket.webhost.name
    role = "roles/storage.objectViewer"
    member = "allUsers"
  
}