resource "aviatrix_firewall_instance" "firewall_instance_1" {
    ############### give FIREWALL name below
    firewall_name = "testfw-terra"
    firewall_size = "Standard_D3_v2"
    vpc_id = aviatrix_transit_gateway.transit_gateway_2.vpc_id
    ############### change the firewall details to the one you have license for
    firewall_image = "Palo Alto Networks VM-Series Flex Next-Generation Firewall (BYOL)"
    firewall_image_id = "paloaltonetworks:vmseries-flex:byol:11.0.0"
    firewall_image_version = "11.0.0"
    egress_subnet = "10.60.0.0/28"
    ###############change the  gateway name below to match transit gateway.tf
    firenet_gw_name = "Azure-Sammons-Transit-GW"
    ############### give FIREWALL username below
    username = "fkadmin"
    ############### change the second octate to match the vnet cidr
    management_subnet = "10.60.0.32/28"
}

resource "aviatrix_firewall_instance" "firewall_instance_2" {
    ############### give HA FIREWALL name below
    firewall_name = "testfw-terr-ha"
    firewall_size = "Standard_D3_v2"
    vpc_id = aviatrix_transit_gateway.transit_gateway_2.vpc_id
    ############### change the firewall details to the one you have license for
    firewall_image = "Palo Alto Networks VM-Series Flex Next-Generation Firewall (BYOL)"
    firewall_image_id = "paloaltonetworks:vmseries-flex:byol:11.0.0"
    firewall_image_version = "11.0.0"
    ############### change the second octate to match the vnet cidr
    egress_subnet = "10.60.0.16/28"
    ############### change the  gateway name below to match transit gateway.tf(keep the hagw)
    firenet_gw_name = "Azure-Sammons-Transit-GW-hagw"
    ############### give HA FIREWALL username below
    username = "fkadmin"
     ############### change the second octate to match the vnet cidr
    management_subnet = "10.60.0.48/28"
}

