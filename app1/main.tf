# module "provider" {
#   source = "../shared"
# }
resource "docker_container" "cloudflared" {
  name  = var.container_name 
  image = var.image_name
  #command = var.command
  #command = concat(var.command, [var.cloudflared_token])
  command = ["tunnel","--no-autoupdate","run","--hello-world"]
}

