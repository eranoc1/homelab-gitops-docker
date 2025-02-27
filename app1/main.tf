module "provider" {
  source = "../shared"
}
resource "docker_container" cloudflared {
  name  = var.container_name 
  image = var.image_name
  # command = var.command
  # env = {
  #   CLOUDFLARED_TOKEN = var.cloudflared_token
  # }

  command = "${var.command} ${var.cloudflared_token}"
  env = {
    CLOUDFLARED_TOKEN = var.cloudflared_token
  }    
#   ports {
#     internal = 
#     external = 
#   }
}