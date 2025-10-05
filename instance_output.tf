# This is the output list file
output "ami_id" {
  description = "The AMI ID used for the instance"
  value       = aws_instance.my_instance.ami
}
output "instance_id" {
  description = "The ID of the instance"
  value       = aws_instance.my_instance.id
}
output "key_name" {
  description = "The key name used for the instance"
  value       = aws_instance.my_instance.key_name
}
output "region" {
  description = "The AWS region where the instance is deployed"
  value       = var.region
}