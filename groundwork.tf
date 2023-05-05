provider "aws" {
  # Configuration options
  region = "eu-central-1"
}

module "aws_groundwork_vpc" {
  source = "git::https://github.com/StuxxNet/iac-aws-groundwork.git?ref=v1.0.1"
}

output "module_vpc_id" {
  value = module.aws_groundwork_vpc.vpc_id
}

output "module_public_subnets" {
  value = module.aws_groundwork_vpc.public_subnets_data
}

output "module_private_subnets" {
  value = module.aws_groundwork_vpc.private_subnets_data
}
