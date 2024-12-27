output "container_name" {
  value       = docker_container.nginx.name
  description = "The name of the Docker container"
}

output "container_ip" {
  value       = docker_container.nginx.network_data[0].ip_address
  description = "The IP address of the Docker container"
}