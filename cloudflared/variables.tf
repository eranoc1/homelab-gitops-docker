variable "image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "cloudflare/cloudflared:2025.5.0"
}

variable "container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "cloudflared"
}

variable "network_mode" {
  description = "The network mode of the Docker container"
  type        = string
  default     = "host"
  
}

variable "tunnel_token" {
  description = "tunnel token"
  type        = string
  default     = ""
  sensitive   = true
}
