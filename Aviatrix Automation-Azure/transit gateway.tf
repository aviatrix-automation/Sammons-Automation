
resource "aviatrix_transit_gateway" "transit_gateway_2" {
    single_az_ha = true
    ############### give transit gateway name below
    gw_name = "Azure-Sammons-Transit-GW"
    vpc_id = aviatrix_vpc.vpc_1.vpc_id
    cloud_type = 8
    ############### give desired region name below
    vpc_reg = "East US"
    gw_size = "Standard_D3_v2"
    insane_mode = true
    ############### give azure name below that you configured in controller for azure
    account_name = "fk-Azure"
    subnet = "10.60.0.64/26"
    enable_transit_firenet = true
    local_as_number = "64890"
    enable_bgp_over_lan = true
    ha_subnet = "10.60.0.192/26"
    ha_gw_size = "Standard_D3_v2"
}