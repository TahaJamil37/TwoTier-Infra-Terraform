variable "vpc-name" {
  description = "Name tag for the Virtual Private Cloud (VPC)."
  type        = string
}

variable "vpc-cidr" {
  description = "CIDR block for the VPC."
  type        = string
}

variable "igw-name" {
  description = "Name tag for the Internet Gateway attached to the VPC."
  type        = string
}

variable "public-cidr1" {
  description = "CIDR block for the first public subnet."
  type        = string
}

variable "public-subnet1" {
  description = "Name tag for the first public subnet."
  type        = string
}

variable "public-cidr2" {
  description = "CIDR block for the second public subnet."
  type        = string
}

variable "public-subnet2" {
  description = "Name tag for the second public subnet."
  type        = string
}

variable "private-cidr1" {
  description = "CIDR block for the first private subnet."
  type        = string
}

variable "private-subnet1" {
  description = "Name tag for the first private subnet."
  type        = string
}

variable "private-cidr2" {
  description = "CIDR block for the second private subnet."
  type        = string
}

variable "private-subnet2" {
  description = "Name tag for the second private subnet."
  type        = string
}

variable "eip-name1" {
  description = "Name tag for the first Elastic IP for the NAT Gateway."
  type        = string
}

variable "eip-name2" {
  description = "Name tag for the second Elastic IP for the NAT Gateway."
  type        = string
}

variable "ngw-name1" {
  description = "Name tag for the first NAT Gateway."
  type        = string
}

variable "ngw-name2" {
  description = "Name tag for the second NAT Gateway."
  type        = string
}

variable "public-rt-name1" {
  description = "Name tag for the first public route table."
  type        = string
}

variable "public-rt-name2" {
  description = "Name tag for the second public route table."
  type        = string
}

variable "private-rt-name1" {
  description = "Name tag for the first private route table."
  type        = string
}

variable "private-rt-name2" {
  description = "Name tag for the second private route table."
  type        = string
}
