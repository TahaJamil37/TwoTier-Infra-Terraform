variable "sg-name" {
  description = "Name tag for the security group."
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for the DB subnet group."
  type        = list(string)
}

variable "db-sg-name" {
  description = "Name tag for the database security group."
  type        = string
}

variable "rds-username" {
  description = "Master username for the RDS instance."
  type        = string
}

variable "rds-pwd" {
  description = "Master password for the RDS instance."
  type        = string
  sensitive   = true
}

variable "db-name" {
  description = "Name of the initial database to create."
  type        = string
}

variable "rds-name" {
  description = "Name tag for the RDS instance."
  type        = string
}

variable "database-sg-id" {
  description = "ID of the database security group."
  type        = string
}
