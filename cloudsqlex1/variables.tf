variable "region" {
  type        = string
  default     = "us-central1"
  description = "region information"
}

variable "zone" {
  default = "us-central1-b"
}


variable "project" {
  type    = string
  default = "cloud-practice-417601"
  #description = "Project for Terraform Practise"
}


variable "vpc_network_name" {
  default = "sapco"
}

variable "instance_name" {
  description = "The name of the Cloud SQL instance"
  type        = string
}

variable "database_version" {
  description = "database version"
  type        = string
  default     = "MYSQL_5_7"

}

variable "tier" {
  type    = string
  default = "db-f1-micro"
}

variable "backup_enabled" {
  type    = bool
  default = true

}

variable "backup_start_time" {
  type    = string
  default = "4:00"
}

variable "ipv4_enabled" {
  type    = bool
  default = true
}


variable "require_ssl" {
  type    = bool
  default = false

}

variable "authorized_networks" {
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}

variable "database_name" {
  type        = string
  description = "database name"
}


variable "user_name" {
  type = string
}

variable "user_password" {
  type = string
}






































