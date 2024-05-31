provider "google" {
    project = "cloud-practice-417601"
    region = "us-central-1"  
}

data "google_compute_instance" "my_instance" {
    project = "cloud-practice-417601"
    zone = "us-central1-a"
    name = "web-server-1"
}

output "instance_info" {
    value = data.google_compute_instance.my_instance
}


data "google_storage_bucket" "my_bucket" {
    name = "gcptfpractise"
}

output "bucket_infor" {
    value = data.google_storage_bucket.my_bucket
}