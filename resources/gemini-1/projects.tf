resource "digitalocean_project" "gemini-1" {
  name        = "gemini-1"
  description = "Subspace Gemini testnet"
  purpose     = "Testnet"
  environment = "Production"
  resources = flatten([
    [for droplet in digitalocean_droplet.gemini-1: droplet.urn],
  ])
}

