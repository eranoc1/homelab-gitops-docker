resource "docker_container" "plex" {
    name = var.plex_container_name
    image = var.plex_image_name
    network_mode = var.plex_network_mode
    restart = "unless-stopped"
    env = [
            "PUID=${var.plex_puid}",
            "PGID=${var.plex_pgid}",
            "TZ=${var.plex_tz}",
            "VERSION=${var.plex_version}",
    ]
    
    volumes {
        volume_name    = var.plex_volume_name1
        container_path = var.plex_container_path1
    }
        volumes {
        volume_name    = var.plex_volume_name2
        container_path = var.plex_container_path2
    }
    ## Uncomment the following lines if you have a third volume
    #     volumes {
    #     volume_name    = var.plex_volume_name3
    #     container_path = var.plex_container_path3
    # }
}