variable "image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "cloudflare/cloudflared@sha256:1b1d34d0a9c0bfca9de72db8460d328db3f19edd2b96169114e3e893a97bbe53" #2026.10.5
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
