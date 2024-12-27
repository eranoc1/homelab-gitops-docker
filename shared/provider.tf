provider "docker" {
  host = "unix:///var/run/docker.sock"  # Default Docker socket (use appropriate Docker endpoint)
}