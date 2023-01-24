
resource "aviatrix_transit_gateway" "transit_gateway_1" {
    single_az_ha = true
    gw_name = "AWS-FIRENET-TRANSIT-GW"
    vpc_id = aviatrix_vpc.vpc_1.vpc_id
    cloud_type = 1
    vpc_reg = "us-east-2"
    connected_transit = true
    gw_size = "c5n.xlarge"
    insane_mode = true
    insane_mode_az = "us-east-2a"
    account_name = "fk"
    subnet = "10.90.0.192/26"
    enable_encrypt_volume = true
    enable_transit_firenet = true
    enable_segmentation = true
    ha_insane_mode_az = "us-east-2b"
    ha_subnet = "10.90.1.0/26"
    ha_gw_size = "c5n.xlarge"
}