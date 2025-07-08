# Terraform AWS Infrastructure Documentation

This project provisions a **highly available, secure, and scalable AWS infrastructure** using **modular Terraform**.  
It includes a **custom VPC**, **Public & Private Subnets**, **ALB**, **Auto Scaling**, **EC2 Instances**, **RDS**, **IAM Roles**, **Route 53**, and **CloudFront** with **ACM**.

---

## 📖 Overview

**Main features:**
- Modularized Terraform design for reusability.
- Fully automated VPC setup with Public & Private subnets across **2 AZs**.
- Internet Gateway, NAT Gateways, EIPs, Route Tables.
- ALB with Target Groups.
- Auto Scaling Group with Launch Templates.
- Secure RDS setup with Writer & Reader.
- Route 53 domain, CloudFront CDN, ACM SSL.
- IAM Roles and Instance Profiles.
- Clear **dependencies** to ensure correct creation order.

---

## ⚙️ Prerequisites

- [Terraform](https://www.terraform.io/) installed.
- AWS CLI configured with `aws configure`.
- A registered domain in **Route 53**.
- Valid AWS IAM user with sufficient permissions.

---

## 🗺️ Architecture Diagram


![Architecture](images/aws_architecture.png)

---

## 📂 Project Structure

```plaintext
.
├── modules/
│   ├── aws-vpc/
│   ├── aws-alb/
│   ├── aws-autoscaling/
│   ├── aws-rds/
│   ├── aws-iam/
│   ├── aws-cloudfront-acm-route53/
│   └── security-group/
├── main.tf
├── variables.tf
├── backend.tf
├── terraform.tfvars
└── README.md
```

---




## Setup Instructions

### 1. Configure AWS CLI
First, configure your AWS credentials:

```bash
aws configure
```

### 2. Initialize Terraform
Navigate to the root of your project where your main Terraform configuration (`main.tf`, `variables.tf`, etc.) resides and initialize the Terraform working directory. This downloads the necessary providers and modules.

```bash
terraform init
```

### 3. Review the Plan
Before applying any changes, we highly recommend reviewing the execution plan. This command shows you what Terraform will do without actually making any changes.

```bash
terraform plan -var-file="terraform.tfvars"
```

**Note:** You'll need to create a `terraform.tfvars` file to provide values for the input variables defined in `variables.tf`. An example `terraform.tfvars` structure is provided in the Configuration section.

### 4. Apply the Configuration
If the plan looks good, apply the configuration. Terraform will provision the AWS resources as defined.

```bash
terraform apply -var-file="terraform.tfvars"
```

Type `yes` when prompted to confirm the apply operation.

## Terraform Modules

This project is structured with the following custom Terraform modules:

- **`./modules/aws-vpc`**: Manages the creation of the VPC, subnets (public and private), Internet Gateway, NAT Gateways, and route tables.

- **`./modules/aws-alb`**: Configures the Application Load Balancer and its target group.

- **`./modules/security-group`**: Defines security groups for the ALB, web instances, and the database.

- **`./modules/aws-rds`**: Deploys the Amazon RDS database instance(s) (writer and reader).

- **`./modules/aws-iam`**: Manages IAM roles and instance profiles for EC2 instances.

- **`./modules/aws-autoscaling`**: Sets up the Auto Scaling Group and Launch Template for your EC2 instances.

- **`./modules/aws-cloudfront-acm-route53`**: Configures Route 53 DNS records, CloudFront distribution, and ACM certificates for domain management and content delivery.

## Configuration

All configurable parameters are defined in `variables.tf`. You should provide values for these variables in a `terraform.tfvars` file at the root of your project.

