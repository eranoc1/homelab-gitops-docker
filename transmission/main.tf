resource "docker_container" "transmission" {
    name = var.transmission_container_name
    image = var.transmission_image_name
    network_mode = var.transmission_network_mode
    restart = "unless-stopped"
    env = {
        PUID      = var.transmission_puid
        PGID      = var.transmission_pgid
        TZ        = var.transmission_tz
        USER      = var.transmission_username
        PASS      = var.transmission_password
        WHITELIST = var.transmission_whitelist
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