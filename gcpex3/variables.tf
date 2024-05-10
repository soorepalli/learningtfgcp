variable "region" {
  type        = string
  default     = "us-central1"
  description = "region information"
}

variable "zone" {
  default = "us-central1-b"
}


variable "project" {
  #type = string
  default = "cloud-practice-417601"
  #description = "Project for Terraform Practise"
}

variable "bucketname" {
  type        = string
  description = "bucket information"

}