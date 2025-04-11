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
module "shared" {
  source = "./shared"
}
