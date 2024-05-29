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

variable "project_id" {
  #default = cloud-practice-417601  
  type = string
}

variable "cluster_name" {
  type = string
}

variable "node_count" {
  default = 3
  type    = number
}

variable "machine_type" {
  type    = string
  default = "e2-medium"

}

variable "network" {
  type = string

}

variable "subnetwork" {
  type = string
}