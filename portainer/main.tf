resource "docker_container" "portainer" {
    name = var.portainer_container_name
    image = var.portainer_image_name
    network_mode = var.portainer_network_mode
    restart = "unless-stopped"
    labels {
        label = "service"
        value = "portainer"
    }
    ports {
        internal = var.portainer_port1
        external = var.portainer_port1
        protocol = "tcp"
    }
    
    volumes {
        volume_name    = var.portainer_volume_name1
        container_path = var.portainer_container_path1
    }
    volumes {
        volume_name    = var.portainer_volume_name2
        container_path = var.portainer_container_path2
    }    
}