# module "provider" {
#   source = "../shared"
# }
resource "docker_container" "cloudflared" {
  name  = var.container_name 
  image = var.image_name
  command = ["sh", "-c", "${var.command} ${var.cloudflared_token}"]
}