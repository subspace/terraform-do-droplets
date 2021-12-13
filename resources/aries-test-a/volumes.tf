resource "digitalocean_volume" "aries-test-a-volume" {
  region                  = "nyc3"
  name                    = "aries-test-a-volume"
  size                    = 1100
  initial_filesystem_type = "ext4"
  description             = "Extra volume for aries test a."
}

resource "digitalocean_volume_attachment" "aries-test-a-volume" {
  droplet_id = digitalocean_droplet.aries-test-a-nodes-farmer-relayer.id
  volume_id  = digitalocean_volume.aries-test-a-volume.id
}

resource "digitalocean_volume" "farmers-network-a-volume" {
  region                  = "nyc3"
  name                    = "farmers-network-a-volume"
  size                    = 1100
  initial_filesystem_type = "ext4"
  description             = "Extra volume for aries farmers network a."
}

resource "digitalocean_volume_attachment" "farmers-network-a-volume" {
  droplet_id = digitalocean_droplet.aries-farmers-network-a-nodes.id
  volume_id  = digitalocean_volume.farmers-network-a-volume.id
}
