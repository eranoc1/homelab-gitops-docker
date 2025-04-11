module "cloudflared" {
  source = "./cloudflared"
}
module "transmission" {
   source = "./transmission"
}
module "plex" {
  source = "./plex"
}
module "shared" {
  source = "./shared"
}
