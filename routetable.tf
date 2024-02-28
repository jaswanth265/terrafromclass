resource "aws_route_table" "terraform-RT" {
  vpc_id = aws_vpc.terraform-vpc.id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.terraform-IGW.id
  }

  tags = {
    name = var.Main_Routing_Table
    env  = var.environment
  }
}