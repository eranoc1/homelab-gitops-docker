# module "provider" {
#   source = "../shared"
# }
resource "docker_container" "cloudflared" {
  name  = var.container_name 
  image = var.image_name
  #command = var.command
  command = [
    "tunnel",
    "--no-autoupdate",
    "--hello-world"
  ]
}

