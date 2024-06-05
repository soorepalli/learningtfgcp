terraform {
  backend "gcs" {
    bucket = "gcptfstatefiles"
    prefix = "terraform/state"
  }
}