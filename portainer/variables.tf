variable "portainer_image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "portainer/portainer-ce:2.29.0-alpine"
}

variable "portainer_container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "portainer"
}

variable "portainer_network_mode" {
  description = "The network mode for the container"
  type        = string
  default     = "bridge"
}

variable "portainer_port1" {
    description = "The first port to expose"
    type        = string
    default     = 9000
}

variable "portainer_volume_name1" {
    description = "The name of the first volume"
    type        = string
    default     = "/var/run/docker.sock"
}

variable "portainer_container_path1" {
    description = "The path inside the container for the first volume"
    type        = string
    default     = "/var/run/docker.sock"
  
}

variable "portainer_volume_name2" {
    description = "The name of the first volume"
    type        = string
    default     = "portainer_data"
}

variable "portainer_container_path2" {
    description = "The path inside the container for the first volume"
    type        = string
    default     = "/data"
  
}


