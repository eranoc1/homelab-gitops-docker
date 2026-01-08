variable "image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "cloudflare/cloudflared@sha256:89ee50efb1e9cb2ae30281a8a404fed95eb8f02f0a972617526f8c5b417acae2" #2025.11.1
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
