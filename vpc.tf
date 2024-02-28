#################################### VPC Block #########################################


resource "aws_vpc" "terraform-vpc"{
    cidr_block = "172.72.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support   = true 
}

