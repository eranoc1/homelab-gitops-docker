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

resource "docker_container" "cloudflared" {
  provisioner "local-exec" {
    command = "sudo docker run cloudflare/cloudflared:latest tunnel --no-autoupdate --hello-world"
    interpreter = ["bash", "-e"]
  }
}

