terraform {
  backend "s3" {
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_get_ec2_platforms      = true
    endpoint                    = "https://nyc3.digitaloceanspaces.com"
    region                      = "us-west-1"
    bucket                      = "subspace-terraform-backend"
    key                         = "infrastructure/terraform.tfstate"
  }
}

