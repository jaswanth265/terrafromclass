resource "aws_internet_gateway" "terraform-IGW" {
    vpc_id = aws_vpc.terraform-vpc.id
    tags = {
      name = "Terraform-IGW"
      env  = var.environment 
    } 
}