terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

# Check the README for more info on set this variable.
variable "do_token" {}

# SSH agen identity to use to connect to remote host
variable "ssh_identity" {}

# Set DigitalOcean as provider
provider "digitalocean" {
  token = var.do_token
}

provider "cloudflare" {
  email   = var.cloudflare_email
  account_id = var.cloudflare_account_id
  api_token = var.cloudflare_api_token
}

variable "cloudflare_email" {
  type        = string
  description = "clouflare email address"
}

variable "cloudflare_account_id" {
  type        = string
  description = "cloudflare account id"
}

variable "cloudflare_api_token" {
  type        = string
  description = "cloudflare api token"
}

# SSH team keys to be used on droplet access
data "digitalocean_ssh_key" "nazar-key" {
  name = "Nazar SSH Key"
}
data "digitalocean_ssh_key" "serge-key" {
  name = "Serge SSH Key"
}
data "digitalocean_ssh_key" "ved-key" {
  name = "Ved SSH Key"
}

# add ssh keys as single var
locals {
  ssh_keys = [
    data.digitalocean_ssh_key.nazar-key.id,
    data.digitalocean_ssh_key.serge-key.id,
    data.digitalocean_ssh_key.ved-key.id
  ]
}
