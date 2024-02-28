resource "aws_route_table_association" "terraform-rta" {
  count = length(var.subnet_cidrs)  
  subnet_id      = aws_subnet.terraform-subnet[count.index].id
  route_table_id = aws_route_table.terraform-RT.id
}