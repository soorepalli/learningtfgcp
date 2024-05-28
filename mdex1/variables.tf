# Define variables for project and region
variable "project" {
  description = "The project ID where the resources will be created"
  type        = string
}

variable "region" {
  description = "The region where resources will be created"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The zone where the instance will be created"
  type        = string
  default     = "us-central1-a"
}


variable "vm_count" {
  type = number
  default = 2  
}

variable "bucket_name" {
    type = string
    description = "Bucker Information"
}