output "vpc_output" {
  value = aws_vpc.my-vpc.id
  description = "The ID of the VPC"
  
}
output "my_public_Subnet_output" {
  value = aws_subnet.my_public_Subnet.id
  description = "The ID of the publice subnet"
  depends_on = [
    aws_subnet.my_public_Subnet
  ] 
  
}
output "my_private_Subnet_output" {
  value = aws_subnet.my_private_Subnet.id
  description = "The ID of the private subnet"
  depends_on = [
    aws_subnet.my_private_Subnet
  ] 
  
}