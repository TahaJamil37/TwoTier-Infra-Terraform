#############################################
# 🚀 VPC & Networking
#############################################

VPC-NAME         = "Two-Tier-VPC"
VPC-CIDR         = "10.0.0.0/16"
IGW-NAME         = "Two-Tier-Internet-Gateway"

PUBLIC-CIDR1     = "10.0.1.0/24"
PUBLIC-SUBNET1   = "Two-Tier-Public-Subnet1"

PUBLIC-CIDR2     = "10.0.2.0/24"
PUBLIC-SUBNET2   = "Two-Tier-Public-Subnet2"

PRIVATE-CIDR1    = "10.0.3.0/24"
PRIVATE-SUBNET1  = "Two-Tier-Private-Subnet1"

PRIVATE-CIDR2    = "10.0.4.0/24"
PRIVATE-SUBNET2  = "Two-Tier-Private-Subnet2"

EIP-NAME1        = "Two-Tier-Elastic-IP1"
EIP-NAME2        = "Two-Tier-Elastic-IP2"

NGW-NAME1        = "Two-Tier-NAT1"
NGW-NAME2        = "Two-Tier-NAT2"

PUBLIC-RT-NAME1  = "Two-Tier-Public-Route-Table1"
PUBLIC-RT-NAME2  = "Two-Tier-Public-Route-Table2"
PRIVATE-RT-NAME1 = "Two-Tier-Private-Route-Table1"
PRIVATE-RT-NAME2 = "Two-Tier-Private-Route-Table2"

#############################################
# 🔒 Security Groups
#############################################

ALB-SG-NAME = "Two-Tier-ALB-SG"
WEB-SG-NAME = "Two-Tier-Web-SG"
DB-SG-NAME  = "Two-Tier-DB-SG"

#############################################
# 💾 RDS
#############################################

SG-NAME      = "Two-Tier-RDS-SG"
RDS-USERNAME = "admin"
RDS-PWD      = "CHANGE_ME_USE_SECRETS_MANAGER"
DB-NAME      = "mydb"
RDS-NAME     = "Two-Tier-RDS"

#############################################
# ⚖️ Application Load Balancer
#############################################

TG-NAME  = "Web-TG"
ALB-NAME = "Web-ELB"

#############################################
# 🔐 IAM
#############################################

IAM-ROLE              = "IAM-Role-For-EC2-SSM"
IAM-POLICY            = "IAM-Policy-For-EC2-SSM"
INSTANCE-PROFILE-NAME = "IAM-Instance-Profile-For-EC2-SSM"

#############################################
# 🚀 Auto Scaling
#############################################

AMI-NAME             = "New-AMI"
LAUNCH-TEMPLATE-NAME = "Web-Template"
ASG-NAME             = "Two-Tier-ASG"

#############################################
# 🌍 Route 53 & CloudFront
#############################################

DOMAIN-NAME = "tahajamil.com"
CDN-NAME    = "Two-Tier-CDN"
