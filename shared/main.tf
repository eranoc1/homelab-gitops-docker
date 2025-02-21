resource "docker_container" "nginx-gitops" {
  name  = var.container_name
  image = var.image_name
  ports {
    internal = 80
    external = 9080
  }
}
