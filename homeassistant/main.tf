resource "docker_container" "homeassistant" {
    name = var.homeassistant_container_name
    image = var.homeassistant_image_name
    network_mode = var.homeassistant_network_mode
    restart = "unless-stopped"
    privileged = true
    labels {
        label = "service"
        value = "homeassistant"
    }
    env = [
            "TZ=${var.homeassistant_tz}",
    ]
    volumes {
        volume_name    = var.homeassistant_volume_name1
        container_path = var.homeassistant_container_path1
    }
    volumes {
        volume_name    = var.homeassistant_volume_name2
        container_path = var.homeassistant_container_path2
        mode = "ro"
    }

}