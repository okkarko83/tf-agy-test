# AWS Three-Tier VPC Module

Provisions a production-grade AWS VPC with isolated **Public**, **Private**, and **Database** subnet tiers, NAT Gateways, Route Tables, and an RDS DB Subnet Group.

## Naming Pattern
All resources follow `<project_name>-<environment>-<resource>` conventions (e.g., `okk-infra-prod-vpc`).

## Usage

```hcl
module "vpc" {
  source = "./modules/vpc"

  project_name         = "okk-infra"
  environment          = "prod"
  vpc_cidr             = "10.2.0.0/16"
  availability_zones   = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  public_subnet_cidrs  = ["10.2.1.0/24", "10.2.2.0/24", "10.2.3.0/24"]
  private_subnet_cidrs = ["10.2.11.0/24", "10.2.12.0/24", "10.2.13.0/24"]
  db_subnet_cidrs      = ["10.2.21.0/24", "10.2.22.0/24", "10.2.23.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = false
}
```
