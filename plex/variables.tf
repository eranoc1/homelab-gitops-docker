variable "plex_image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "lscr.io/linuxserver/plex@sha256:28f18c27b6822328df994154dbf7c0f511032d9f91bbd10881030b706afd8593" #1.42.1
  
}

variable "plex_container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "plex"
  
}

variable "plex_network_mode" {
  description = "The network mode for the container"
  type        = string
  default     = "host"
}

variable "plex_puid" {
  description = "The user ID for the container"
  type        = string
  default     = 1001
  
}

variable "plex_pgid" {
  description = "The group ID for the container"
  type        = string
  default     = 1001
  
}

variable "plex_tz" {
  description = "The user ID for the container"
  type        = string
  default     = "Asia/Jerusalem"
  
}

variable "plex_version" {
    description = "The version for the container"
    type        = string
    default     = "docker"
}
variable "plex_volume_name1" {
    description = "The name of the first volume"
    type        = string
    default     = "plexconfig"
}

variable "plex_container_path1" {
    description = "The path inside the container for the first volume"
    type        = string
    default     = "/config"
  
}

variable "plex_volume_name2" {
    description = "The name of the second volume"
    type        = string
    default     = "transmissiondownloads"
}

variable "plex_container_path2" {
    description = "The path inside the container for the second volume"
    type        = string
    default     = "/movies"
  
}

variable "plex_volume_name3" {
    description = "The name of the third volume"
    type        = string
    default     = "transmissiondownloads"
}

variable "plex_container_path3" {
    description = "The path inside the container for the third volume"
    type        = string
    default     = "/tv"
  
}

