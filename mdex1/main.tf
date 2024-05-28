module "gcs_bucket" {
    source = "./modules/storage-bucket"
    bucket_name = var.bucket_name

}