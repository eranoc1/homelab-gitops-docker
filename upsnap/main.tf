resource "docker_container" "upsnap" {
    name = var.upsnap_container_name
    image = var.upsnap_image_name
    netwwork_mode = var.upsnap_network_mode
    restart = "unless-stopped"
    #user = "${var.upsnap_puid}:${var.upsnap_pgid}"
    env = [
            "TZ=${var.upsnap_tz}",
            #"UPSNAP_PING_PRIVILEGED=${var.upsnap_ping_privileged}",
    ]
    volumes {
        volume_name    = var.upsnap_volume_name1
        container_path = var.upsnap_container_path1
    }
  
}