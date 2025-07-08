variable "ami_name" {
  description = "The name filter for the AMI to use for EC2 instances."
  type        = string
}

variable "launch-template-name" {
  description = "The name of the Launch Template for the Auto Scaling Group."
  type        = string
}

variable "web-sg-name" {
  description = "Name tag for the security group attached to EC2 web instances."
  type        = string
}

variable "iam-role" {
  description = "Name of the IAM role to attach to EC2 instances."
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs where the Auto Scaling Group can launch instances."
  type        = list(string)
}

variable "instance-profile-name" {
  description = "Name of the instance profile for the EC2 instances."
  type        = string
}

variable "asg-name" {
  description = "Name tag for the Auto Scaling Group."
  type        = string
}

variable "alb-sg-id" {
  description = "ID of the security group attached to the ALB that the ASG instances will register with."
  type        = string
}

variable "aws_lb_target_group" {
  description = "ARN of the Target Group to associate with the Auto Scaling Group."
  type        = string
}
