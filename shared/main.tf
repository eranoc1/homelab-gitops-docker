resource "docker_container" "nginx-gitops" {
  name  = var.container_name
  image = var.image_name
  ports {
    internal = 80
    external = 5081
  }
}
resource "docker_container" "nginx-gitops1" {
  name  = "nginx-gitops1"
  image = var.image_name
  ports {
    internal = 80
    external = 4081
  }
}
