variable "image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "cloudflare/cloudflared:2025.2.1-arm64"
}

variable "container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "cloudflared"
}

variable "tunnel_token" {
  description = "tunnel token"
  type        = string
  default     = ""
}

# variable "cloudflared_token" {
#   description = "cloudflared token"
#   type        = string
#   default     = ""
# }
# variable "command" {
#   description = "Docker container command"
#   type        = string
#   default     = "tunnel --no-autoupdate run --token ${var.cloudflared_token}"
# }

# variable "command" {
#   description = "Docker container command"
#   type        = string
#   default     = "tunnel --no-autoupdate run --token"
# }

# variable "command" {
#   description = "Docker container command"
#   type        = list(string)
#   default     = ["tunnel", "--no-autoupdate", "run", "--token"]
# }