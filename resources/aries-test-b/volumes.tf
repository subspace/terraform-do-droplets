resource "digitalocean_volume" "aries-test-b-volume" {
  region                  = "nyc3"
  name                    = "aries-test-b-volume"
  size                    = 1100
  initial_filesystem_type = "ext4"
  description             = "Extra volume for aries test b."
}

resource "digitalocean_volume_attachment" "aries-test-b-volume" {
  droplet_id = digitalocean_droplet.aries-test-b-nodes-farmer-relayer.id
  volume_id  = digitalocean_volume.aries-test-b-volume.id
}

resource "digitalocean_volume" "farmers-network-b-volume" {
  region                  = "nyc3"
  name                    = "farmers-network-b-volume"
  size                    = 1100
  initial_filesystem_type = "ext4"
  description             = "Extra volume for aries farmers network b."
}

resource "digitalocean_volume_attachment" "farmers-network-b-volume" {
  droplet_id = digitalocean_droplet.aries-farmers-network-b-nodes.id
  volume_id  = digitalocean_volume.farmers-network-b-volume.id
}
