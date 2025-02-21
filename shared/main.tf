resource "docker_container" "nginx-gitops" {
  name  = var.container_name
  image = var.image_name
  ports {
    internal = 80
    external = 7080
  }
}
resource "docker_container" "nginx-gitops1" {
  name  = "nginx-gitops1"
  image = var.image_name
  ports {
    internal = 80
    external = 6080
  }
}
