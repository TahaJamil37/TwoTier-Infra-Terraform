# 🚀 AWS 3-Tier Architecture with Terraform

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

_Optional: Add a diagram here._

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
│   ├── security-group/
├── main.tf
├── variables.tf
├── backend.tf
├── terraform.tfvars
├── README.md
