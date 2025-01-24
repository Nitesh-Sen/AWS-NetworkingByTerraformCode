provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./vpc"

  vpc_name          = var.vpc_name
  cidr_block        = var.cidr_block
  public_subnets    = var.public_subnets
  private_subnets   = var.private_subnets
  availability_zones = var.availability_zones
  additional_tags   = var.additional_tags
  public_subnet_tags = var.public_subnet_tags
  private_subnet_tags = var.private_subnet_tags
}
