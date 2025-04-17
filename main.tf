module "cloudflared" {
  source = "./cloudflared"
}
module "transmission" {
   source = "./transmission"
}
module "plex" {
  source = "./plex"
}
module "portainer" {
  source = "./portainer"
}
module "homeassistant" {
  source = "./homeassistant"
}
module "upsnap" {
  source = "./upsnap"
}
module "shared" {
  source = "./shared"
}
