output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc.id
}

output "public_subnet_ids" {
  description = "List of IDs for public subnets"
  value       = [
    aws_subnet.public-subnet1.id,
    aws_subnet.public-subnet2.id
  ]
}