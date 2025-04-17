variable "upsnap_image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "ghcr.io/seriousm4x/upsnap:5.0.4"
}

variable "upsnap_container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "upsnap"
}

variable "upsnap_network_mode" {
  description = "The network mode for the container"
  type        = string
  default     = "host"
}

variable "upsnap_tz" {
  description = "The timezone for the container"
  type        = string
  default     = "Asia/Jerusalem"
}

variable "upsnap_ping_privileged" {
  description = "Set to false if you don't have root user permissions"
  type        = string
  default     = "false"
}

variable "upsnap_puid" {
  description = "The user ID for the container"
  type        = string
  default     = 1001
  
}

variable "upsnap_pgid" {
  description = "The group ID for the container"
  type        = string
  default     = 1001
  
}
variable "upsnap_volume_name1" {
    description = "The name of the first volume"
    type        = string
    default     = "upsnap_data"
}

variable "upsnap_container_path1" {
    description = "The path inside the container for the first volume"
    type        = string
    default     = "/app/pb_data"
  
}



