# Transit Gateways

module "aws_transit_1" {
  source = "./modules/terraform-aviatrix-mc-transit"

  cloud                  = "aws"
  name                   = var.aws_transit_gateway_name
  region                 = var.aws_region1
  cidr                   = var.aws_cidr
  account                = var.aws_account_name
  insane_mode            = true
  instance_size          = var.aws_transit_gw_size
  enable_transit_firenet = true
}

module "aws_firenet_1" {
  source = "./modules/terraform-aviatrix-mc-firenet"

  transit_module         = module.aws_transit_1
  firewall_image         = "Palo Alto Networks VM-Series Next-Generation Firewall (BYOL)"
  firewall_image_version = "10.1.8-h2"
  instance_size          = var.aws_firewall_size
  egress_enabled         = true
}


# # Spoke Gateways

# module "aws_spoke_1_1" {
#   source = "./modules/terraform-aviatrix-mc-spoke"

#   cloud                  = "aws"
#   name                   = "aws-spoke-1-1"
#   cidr                   = "10.10.12.0/23"
#   region                 = "us-west-1"
#   account                = var.aws_account_name
#   transit_gw             = module.aws_transit_1.transit_gateway.gw_name
#   insane_mode            = true
#   instance_size          = var.aws_spoke_gw_size
#   enable_max_performance = true
# }

# module "aws_spoke_1_2" {
#   source = "./modules/terraform-aviatrix-mc-spoke"

#   cloud                  = "aws"
#   name                   = "aws-spoke-1-2"
#   cidr                   = "10.10.12.0/24"
#   region                 = "us-west-1"
#   account                = var.aws_account_name
#   transit_gw             = module.aws_transit_1.transit_gateway.gw_name
#   insane_mode            = true
#   instance_size          = var.aws_spoke_gw_size_2
#   enable_max_performance = true
# }