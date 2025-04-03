module "cloudflared" {
  source = "./cloudflared"
}
module "transmission" {
   source = "./transmission"
}
module "shared" {
  source = "./shared"
}

# variable "tunnel_token" {
#   description = "Token for the tunnel"
#   type        = string
#   default     = ""
# }

