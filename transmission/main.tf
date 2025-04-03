resource "docker_container" "transmission" {
    name = var.transmission_container_name
    image = var.transmission_image_name
    network_mode = var.transmission_network_mode
    restart = "unless-stopped"
    environment {
        name  = "PUID"
        value = var.transmission_puid
    }
    environment {
        name  = "PGID"
        value = var.transmission_pgid
    }
    environment {
        name  = "TZ"
        value = "var.transmission_tz"
    }
    environment {
        name  = "USER"
        value = var.transmission_username
    }
    environment {
        name  = "PASS"
        value = var.transmission_password
    }
    environment {
        name  = "WHITELIST"
        value = var.transmission_whitelist
    }
    ports {
        internal = var.transmission_port1
        external = var.transmission_port1
        protocol = "tcp"
    }
    ports {
        internal = var.transmission_port2
        external = var.transmission_port2
        protocol = "tcp"
    }
    ports {
        internal = var.transmission_port2
        external = var.transmission_port2
        protocol = "udp"
    }        
    volumes {
        volume_name    = var.transmission_volume_name1
        container_path = var.transmission_container_path1
    }
        volumes {
        volume_name    = var.transmission_volume_name2
        container_path = var.transmission_container_path2
    }
        volumes {
        volume_name    = var.transmission_volume_name3
        container_path = var.transmission_container_path3
    }
}