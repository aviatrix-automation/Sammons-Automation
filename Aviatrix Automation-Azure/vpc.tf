resource "aviatrix_vpc" "vpc_1" {
    cloud_type = 8
    ############### give azure name below that you configured in controller for azure
    account_name = "fk-Azure"
    ############### give azure VNET name below
    name = "leapfrog"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = true
    ############### give desired region name below
    region = "East US"
    ############### give desired VNET CIDR  below
    cidr = "10.60.0.0/23"
}