terraform {
  required_providers {
    aviatrix = {
      source = "AviatrixSystems/aviatrix"
      version = "2.23.2"
    }
  }
}
provider "aviatrix" {
  ############### give the controller ip admin username and password below
  controller_ip           = "controller ip"
  username                = "********"
  password                = "********"
  skip_version_validation = false
  }
