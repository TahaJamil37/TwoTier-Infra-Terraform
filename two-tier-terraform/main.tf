module "vpc" {
  source = "./modules/aws-vpc"

  vpc-name         = var.VPC-NAME
  vpc-cidr         = var.VPC-CIDR
  igw-name         = var.IGW-NAME
  public-cidr1     = var.PUBLIC-CIDR1
  public-subnet1   = var.PUBLIC-SUBNET1
  public-cidr2     = var.PUBLIC-CIDR2
  public-subnet2   = var.PUBLIC-SUBNET2
  private-cidr1    = var.PRIVATE-CIDR1
  private-subnet1  = var.PRIVATE-SUBNET1
  private-cidr2    = var.PRIVATE-CIDR2
  private-subnet2  = var.PRIVATE-SUBNET2
  eip-name1        = var.EIP-NAME1
  eip-name2        = var.EIP-NAME2
  ngw-name1        = var.NGW-NAME1
  ngw-name2        = var.NGW-NAME2
  public-rt-name1  = var.PUBLIC-RT-NAME1
  public-rt-name2  = var.PUBLIC-RT-NAME2
  private-rt-name1 = var.PRIVATE-RT-NAME1
  private-rt-name2 = var.PRIVATE-RT-NAME2
}
module "alb" {
  source            = "./modules/aws-alb"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  alb-name          = var.ALB-NAME
  tg-name           = var.TG-NAME
}

module "security-group" {
  source      = "./modules/security-group"
  vpc_id      = module.vpc.vpc_id
  alb-sg-id   = module.alb.alb-sg-id
  web-sg-name = var.WEB-SG-NAME
  db-sg-name  = var.DB-SG-NAME


  depends_on = [module.vpc]
}

module "rds" {
  source = "./modules/aws-rds"

  sg-name            = var.SG-NAME
  private_subnet_ids = module.vpc.private_subnet_ids
  db-sg-name         = var.DB-SG-NAME
  rds-username       = var.RDS-USERNAME
  rds-pwd            = var.RDS-PWD
  db-name            = var.DB-NAME
  rds-name           = var.RDS-NAME
  database-sg-id     = module.security-group.database-sg-id

  depends_on = [module.security-group]
}
module "iam" {
  source = "./modules/aws-iam"

  iam-role              = var.IAM-ROLE
  iam-policy            = var.IAM-POLICY
  instance-profile-name = var.INSTANCE-PROFILE-NAME

  depends_on = [module.alb]
}

module "autoscaling" {
  source = "./modules/aws-autoscaling"

  ami_name              = var.AMI-NAME
  launch-template-name  = var.LAUNCH-TEMPLATE-NAME
  instance-profile-name = var.INSTANCE-PROFILE-NAME
  web-sg-name           = var.WEB-SG-NAME
  aws_lb_target_group   = module.alb.aws_lb_target_group_tg
  iam-role              = var.IAM-ROLE
  public_subnet_ids     = module.vpc.public_subnet_ids
  alb-sg-id             = module.alb.alb-sg-id
  asg-name              = var.ASG-NAME

  depends_on = [module.iam]
}
module "route53" {
  source = "./modules/aws-cloudfront-acm-route53"
  providers = {
    aws = aws.useast1
  }

  domain-name  = var.DOMAIN-NAME
  cdn-name     = var.CDN-NAME
  alb-dns_name = module.alb.alb-dns_name


  depends_on = [module.autoscaling]
}
