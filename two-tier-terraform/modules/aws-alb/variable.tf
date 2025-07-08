variable "public_subnet_ids" {
  description = "List of public subnet IDs where the Application Load Balancer will be deployed."
  type        = list(string)
}

variable "alb-name" {
  description = "Name tag for the Application Load Balancer."
  type        = string
}

variable "tg-name" {
  description = "Name tag for the Target Group attached to the ALB."
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where the ALB and Target Group will be created."
  type        = string
}
