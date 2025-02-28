# module "provider" {
#   source = "../shared"
# }
resource "docker_container" "cloudflared" {
  name    = var.container_name
  image   = var.image_name
  command = split(" ", local.full_command)
  env = [
    "CLOUDFLARED_TOKEN=${var.cloudflared_token}"
  ]
  # other configurations...
}