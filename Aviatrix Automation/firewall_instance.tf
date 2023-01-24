resource "aviatrix_firewall_instance" "firewall_instance_1" {
    firewall_name = "Vitech-Palo"
    firewall_size = "m5.xlarge"
    vpc_id = aviatrix_transit_gateway.transit_gateway_1.vpc_id
    firewall_image = "Palo Alto Networks VM-Series Next-Generation Firewall (BYOL)"
    firewall_image_id = "ami-0a52ff6e8d88ef401"
    firewall_image_version = "10.2.2"
    egress_subnet = "10.90.0.32/28"
    firenet_gw_name = aviatrix_transit_gateway.transit_gateway_1.ha_gw_name
    management_subnet = "10.90.0.48/28"
 }
resource "aviatrix_firewall_instance" "firewall_instance_2" {
    firewall_name = "Security-vpc-firewall"
    firewall_size = "m5.xlarge"
    vpc_id = aviatrix_transit_gateway.transit_gateway_1.vpc_id
    firewall_image = "Palo Alto Networks VM-Series Next-Generation Firewall (BYOL)"
    firewall_image_id = "ami-0a52ff6e8d88ef401"
    firewall_image_version = "10.2.2"
    egress_subnet = "10.90.0.16/28"
    firenet_gw_name = aviatrix_transit_gateway.transit_gateway_1.gw_name
    management_subnet = "10.90.0.0/28"
}