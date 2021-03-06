variable "droplet-size" {
  description = "Droplet size slug"
  type = string
  default = "m6-2vcpu-16gb"
}

variable "droplet-regions" {
  description = "Droplet regions"
  type = list(string)
  default = ["nyc1", "sfo3", "ams3", "fra1", "blr1", "sgp1"]
}

variable "droplets-per-region" {
  description = "Droplets per region"
  type = number
  default = 2
}

variable "node-snapshot-tag" {
  description = "Node snapshot tag"
  type = string
  default = "gemini-1b-2022-june-05"
}
