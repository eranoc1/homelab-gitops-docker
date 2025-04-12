variable "image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "nginx:stable-alpine"
}

variable "container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "nginx-gitops"
}

# variable "tunnel_token" {
#   description = "tunnel token"
#   type        = string
#   default     = ""
# }