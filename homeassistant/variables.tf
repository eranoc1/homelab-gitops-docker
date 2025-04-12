variable "homeassistant_image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "ghcr.io/home-assistant/home-assistant:2025.4.1"
}

variable "homeassistant_container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "homeassistant"
}

variable "homeassistant_network_mode" {
  description = "The network mode for the container"
  type        = string
  default     = "host"
}

variable "homeassistant_tz" {
  description = "The timezone for the container"
  type        = string
  default     = "Asia/Jerusalem"
}
variable "homeassistant_volume_name1" {
    description = "The name of the first volume"
    type        = string
    default     = "homeassistantconfig"
}

variable "homeassistant_container_path1" {
    description = "The path inside the container for the first volume"
    type        = string
    default     = "/config"
  
}
variable "homeassistant_volume_name2" {
    description = "The name of the first volume"
    type        = string
    default     = "/run/dbus"
}

variable "homeassistant_container_path2" {
    description = "The path inside the container for the first volume"
    type        = string
    default     = "/run/dbus"
  
}



