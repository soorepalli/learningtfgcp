variable "region" {
  type        = string
  default     = "us-central1"
  description = "region information"
}

variable "zone" {
  default = "us-central1-c"
}


variable "project" {
  #type = string
  default = "cloud-practice-417601"
  #description = "Project for Terraform Practise"
}

variable "ssh_user" {
  description = "The username for SSH access"
  type        = string
  default     = "terraform-user"
}

variable "ssh_key" {
  description = "The public SSH key"
  type        = string
}