#################################### Subnet Block #########################################

resource "aws_subnet" "terraform-subnet"{
    count  = length(var.subnet_cidrs)
    vpc_id = aws_vpc.terraform-vpc.id
    map_public_ip_on_launch = true
    cidr_block = var.subnet_cidrs[count.index]
    #availability_zone = ""
    tags = {
      name = "Subnet-${count.index+1}"
      env  = var.environment
    }
}

#################################### Internet GateWay Block ###############################

# resource "aws_internet_gateway" "terraform-IGW" {
#     vpc_id = aws_vpc.terraform-vpc.id
  
# }

#################################### Internet GateWay Block ###############################