terraform {
  backend "gcs" {
    bucket = "gcptfpractise"
    prefix = "terraform/state"
  }
}