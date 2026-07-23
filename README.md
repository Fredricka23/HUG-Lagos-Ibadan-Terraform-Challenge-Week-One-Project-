# HUG Lagos/Ibadan Terraform Challenge – Week One Project

## Project Overview

This project uses Terraform to deploy a basic web server on AWS.

The infrastructure is provisioned using Infrastructure as Code (IaC), including a custom VPC, public subnet, internet gateway, route table, security group, and an EC2 instance.

The EC2 instance is automatically configured using a Terraform user data script that installs Nginx and hosts a simple webpage displaying:

* Fredricka David
* HUG Lagos/Ibadan Terraform Challenge

## Prerequisites

Before deploying this project, make sure you have:

* An AWS account
* AWS CLI installed and configured
* Terraform installed
* Valid AWS credentials with permission to create resources
* Git installed

## AWS Resources Created

Terraform creates the following resources:

* Custom VPC
* Public Subnet
* Internet Gateway
* Route Table
* Route Table Association
* Security Group
* Ubuntu EC2 Instance
* Nginx Web Server

## Project Structure

```text
terraform-webserver/
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── user_data.sh
├── README.md
└── .gitignore
```

## Deployment Instructions
1. Clone the Repository
git clone: https://github.com/Fredricka23/HUG-Lagos-Ibadan-Terraform-Challenge-Week-One-Project-

cd terraform-webserver

2. Configure AWS Credentials
aws configure

Provide:
* AWS Access Key ID
* AWS Secret Access Key
* Region: us-east-1

Verify access:
aws sts get-caller-identity

3. Initialize Terraform
terraform init

4. Format Terraform Files
terraform fmt

5. Validate the Configuration
terraform validate

Expected output:
Success! The configuration is valid

6. Review the Terraform Plan
terraform plan

Review the resources that Terraform will create.

7. Deploy the Infrastructure

Create the AWS resources:
terraform apply

Confirm by typing:
yes

After deployment completes, Terraform will display:

* EC2 Instance ID
* VPC ID
* Public IP Address
* Website URL

Accessing the Website
Open the website URL provided in the Terraform output:
http://<EC2_PUBLIC_IP>

The webpage should display:
Fredricka David
HUG Lagos/Ibadan Terraform Challenge

Destroying the Infrastructure
To remove all AWS resources created by Terraform:
terraform destroy
Confirm by typing:
yes

## Author

**Fredricka David**

HUG Lagos/Ibadan Terraform Challenge – Week One Project
