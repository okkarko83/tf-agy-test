aws_region   = "ap-southeast-1"
project_name = "okk-infra"
environment  = "uat"
team_owner   = "platform-team"

vpc_cidr             = "10.1.0.0/16"
availability_zones   = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
public_subnet_cidrs  = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
private_subnet_cidrs = ["10.1.11.0/24", "10.1.12.0/24", "10.1.13.0/24"]
db_subnet_cidrs      = ["10.1.21.0/24", "10.1.22.0/24", "10.1.23.0/24"]

enable_nat_gateway     = true
single_nat_gateway     = true
create_db_subnet_group = true
