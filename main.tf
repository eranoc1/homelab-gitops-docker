module "app1" {
  source = "./app1"
}
variable "tunnel_token" {
  description = "Token for the tunnel"
  type        = string
}

# module "app2" {
#   source = "./app2"
# }

module "shared" {
  source = "./shared"
}