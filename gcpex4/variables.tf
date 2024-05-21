variable "region" {
  type        = string
  default     = "us-central1"
  description = "region information"
}

variable "zone" {
  default = "us-central1-a"
}


variable "project" {
  #type = string
  default = "cloud-practice-417601"
  #description = "Project for Terraform Practise"
}

variable "vpc_networks" {
    default = 2
}

variable "vpc_names" {
  description = "vpc names"
  type = list(string)
  default = ["vpc-network-1", "vpc-network-2", "vpc-network-3"]
}