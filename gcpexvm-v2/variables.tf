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

variable "network-subnet-cidr" {
  type        = string
  description = "The CIDR for the network subnet"
}

# company name 
variable "company" {
  type        = string
  description = "This variable defines the company name used to build resources"
}

# application name 
variable "app_name" {
  type        = string
  description = "This variable defines the application name used to build resources"
}

# environment
variable "environment" {
  type        = string
  description = "This variable defines the environment to be built"
}

variable "vm_machine_type" {
  type        = string
  description = "VM instance type"
  default     = "f1-micro"
}

variable "ssh_user" {
  description = "The username for SSH access"
  type        = string
  default     = "rsoorepalli"
}

variable "ssh_key" {
  description = "The public SSH key"
  type        = string
}

variable "vm_count" {
  type    = number
  default = 2
}