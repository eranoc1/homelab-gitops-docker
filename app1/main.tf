# module "provider" {
#   source = "../shared"
# }
resource "docker_container" "cloudflared" {
  name  = var.container_name 
  image = var.image_name
  command = ["${var.command}", "${var.cloudflared_token}"]
  env = [
    "CLOUDFLARED_TOKEN=${var.cloudflared_token}"
  ]
  # other configurations...
}