provider "aviatrix" {
  controller_ip = var.aviatrix_controller_ip
  username      = var.aviatrix_username
  password      = var.aviatrix_password
}

# module "transit-peering" {
#   source = "./modules/terraform-aviatrix-mc-transit-peering"

#   transit_gateways = [
#     module.aws_transit_1.transit_gateway.gw_name,
#     module.azure_transit_1.transit_gateway.gw_name,
#     module.gcp_transit_1.transit_gateway.gw_name,
#   ]
# }