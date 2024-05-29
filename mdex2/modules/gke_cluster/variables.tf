variable "cluster_name" {
    type = string
    description = "clustername" 
}

variable "region" {
    type = string
    description = "region"
}

variable "project_id" {
    type = string
    description = "project id" 
}

variable "network" {
    type = string
    description = "network" 
}

variable "subnetwork" {
    type = string
    description = "subnetwork" 
}

variable "node_count" {
    type = number
    description = "node count" 
}

variable "machine_type" {
    type = string
    description = "machine type" 
}