variable "image_name" {
  description = "The Docker image to use"
  type        = string
  default     = "nginx:alpine-stable"
}

variable "container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "nginx-gitops"
}
