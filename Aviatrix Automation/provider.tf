terraform {
  required_providers {
    aviatrix = {
      source = "AviatrixSystems/aviatrix"
      version = "2.24.2"
    }
  }
}
/*
provider "aviatrix" {
  controller_ip = var.aviatrix_controller_ip
  username      = var.aviatrix_username
  password      = var.aviatrix_password
}
*/
provider "aviatrix" {
  controller_ip           = "3.135.245.154"
  username                = "admin"
  password                = "World@09876"
  skip_version_validation = false
  }

provider "aws" {
  alias  = "east2"
  region = "us-east-2"
  shared_credentials_file = "/Users/fahadkamal/.aws/credentials"
  profile                 = "default"
}
