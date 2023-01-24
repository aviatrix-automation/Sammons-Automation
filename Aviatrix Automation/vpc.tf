resource "aviatrix_vpc" "vpc_1" {
    cloud_type = 1
    account_name = "fk"
    name = "Name"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = true
    region = "us-east-2"
    cidr = "10.90.0.0/16"
}