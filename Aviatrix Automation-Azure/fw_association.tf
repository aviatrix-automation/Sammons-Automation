resource "aviatrix_firewall_instance_association" "firewall_instance_association_1" {
  vpc_id               = aviatrix_firewall_instance.firewall_instance_1.vpc_id
  firenet_gw_name      = aviatrix_transit_gateway.transit_gateway_2.gw_name
  instance_id          = aviatrix_firewall_instance.firewall_instance_1.instance_id
  firewall_name        = aviatrix_firewall_instance.firewall_instance_1.firewall_name
  lan_interface        = aviatrix_firewall_instance.firewall_instance_1.lan_interface
  management_interface = aviatrix_firewall_instance.firewall_instance_1.management_interface
  egress_interface     = aviatrix_firewall_instance.firewall_instance_1.egress_interface
  attached             = true
}
resource "aviatrix_firewall_instance_association" "firewall_instance_association_2" {
  vpc_id               = aviatrix_firewall_instance.firewall_instance_2.vpc_id
  firenet_gw_name      = aviatrix_transit_gateway.transit_gateway_2.ha_gw_name
  instance_id          = aviatrix_firewall_instance.firewall_instance_2.instance_id
  firewall_name        = aviatrix_firewall_instance.firewall_instance_2.firewall_name
  lan_interface        = aviatrix_firewall_instance.firewall_instance_2.lan_interface
  management_interface = aviatrix_firewall_instance.firewall_instance_2.management_interface
  egress_interface     = aviatrix_firewall_instance.firewall_instance_2.egress_interface
  attached             = true
}