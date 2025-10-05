resource "aws_vpc" "my-vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_support = true   
}
resource "aws_subnet" "my_public_Subnet" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = var.my_public_Subnet_cidr
    map_public_ip_on_launch = true
    tags = {
        Name = "my_public_Subnet"
        Environment = "dev"
    }
}
resource "aws_subnet" "my_private_Subnet" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = var.my_private_Subnet_cidr
    map_public_ip_on_launch = false
    tags = {
        Name = "my_private_Subnet"
        Environment = "dev"
    }
}
resource "aws_internet_gateway" "my_igw" {
    vpc_id = aws_vpc.my-vpc.id
    tags = {
        Name = "my_igw"
        Environment = "dev"
  
}
}
resource "aws_route_table" "my_public_rt" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_igw.id     
    }
    tags = {
        Name = "my_rt"
        Environment = "dev"
    }
}   