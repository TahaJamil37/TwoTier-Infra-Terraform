variable "domain-name" {
  description = "The primary domain name for which the ACM certificate and Route 53 records will be managed."
  type        = string
}

variable "cdn-name" {
  description = "Name tag for the CloudFront distribution."
  type        = string
}

variable "alb-dns_name" {
  description = "DNS name of the Application Load Balancer to use as the CloudFront origin."
  type        = string
}
