variable "web-sg-name" {
  description = "Name tag for the security group that controls access to the web tier EC2 instances."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where all security groups will be created."
  type        = string
}

variable "alb-sg-id" {
  description = "ID of the security group attached to the Application Load Balancer that controls inbound and outbound rules."
  type        = string
}

variable "db-sg-name" {
  description = "Name tag for the security group that controls access to the database tier."
  type        = string
}
