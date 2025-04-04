variable "transmission_image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "lscr.io/linuxserver/transmission:latest"
  
}

variable "transmission_container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "transmission"
  
}

variable "transmission_network_mode" {
  description = "The network mode for the container"
  type        = string
  default     = "bridge"
}

variable "transmission_puid" {
  description = "The user ID for the container"
  type        = string
  default     = 1001
  
}

variable "transmission_pgid" {
  description = "The group ID for the container"
  type        = string
  default     = 1001
  
}

variable "transmission_tz" {
  description = "The user ID for the container"
  type        = string
  default     = "Asia/Jerusalem"
  
}

variable "transmission_username" {
    description = "The username for the container"
    type        = string
    default     = "eran"
}

variable "transmission_password" {
    description = "The password for the container"
    type        = string
    default     = $tpassword
    sensitive   = true
}

variable "transmission_whitelist" {
    description = "The IP addresses to whitelist"
    type        = string
    default     = "127.0.0.1,192.168.1.*,172.17.*.*"
}

variable "transmission_port1" {
    description = "The first port to expose"
    type        = string
    default     = 9091
}

variable "transmission_port2" {
    description = "The first port to expose"
    type        = string
    default     = 51413
}

variable "transmission_volume_name1" {
    description = "The name of the first volume"
    type        = string
    default     = "transmissionconfig"
}

variable "transmission_container_path1" {
    description = "The path inside the container for the first volume"
    type        = string
    default     = "/config"
  
}

variable "transmission_volume_name2" {
    description = "The name of the second volume"
    type        = string
    default     = "transmissiondownloads"
}

variable "transmission_container_path2" {
    description = "The path inside the container for the second volume"
    type        = string
    default     = "/downloads"
  
}

variable "transmission_volume_name3" {
    description = "The name of the third volume"
    type        = string
    default     = "transmissionwatch"
}

variable "transmission_container_path3" {
    description = "The path inside the container for the third volume"
    type        = string
    default     = "/watch"
  
}

