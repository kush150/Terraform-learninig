variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}   
variable "my_public_Subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string      
  
}
variable "my_private_Subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string      
  
}