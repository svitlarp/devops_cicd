terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}


provider "aws" {
  region = var.aws_region
}

# Connecting S3 module
module "s3" {
  source = "./modules/s3-backend"

  s3_bucket_name       = var.s3_bucket_name
  dynamo_db_table_name = var.dynamo_db_table_name
}

# Connecting VPC
module "vpc" {
  source = "./modules/vpc"

  vpc_name = "${var.vpc_name}-vpc"
  vpc_cidr = var.vpc_cidr

  # Public subnet ALB
  subnet_alb_a_name = var.subnet_alb_a_name
  subnet_alb_a_cidr = var.subnet_alb_a_cidr
  subnet_alb_a_az   = var.subnet_alb_a_az

  subnet_alb_b_name = var.subnet_alb_b_name
  subnet_alb_b_cidr = var.subnet_alb_b_cidr
  subnet_alb_b_az   = var.subnet_alb_b_az

  subnet_alb_c_name = var.subnet_alb_c_name
  subnet_alb_c_cidr = var.subnet_alb_c_cidr
  subnet_alb_c_az   = var.subnet_alb_c_az

  # Private Subnet eks
  subnet_eks_a_name = var.subnet_eks_a_name
  subnet_eks_a_cidr = var.subnet_eks_a_cidr
  subnet_eks_a_az   = var.subnet_eks_a_az

  subnet_eks_b_name = var.subnet_eks_b_name
  subnet_eks_b_cidr = var.subnet_eks_b_cidr
  subnet_eks_b_az   = var.subnet_eks_b_az

  subnet_eks_c_name = var.subnet_eks_c_name
  subnet_eks_c_cidr = var.subnet_eks_c_cidr
  subnet_eks_c_az   = var.subnet_eks_c_az

  # IGW, NAT
  igw_alb_name   = var.igw_alb_name
  nat_eks_a_name = var.nat_eks_a_name
  nat_eks_b_name = var.nat_eks_b_name

  # Route Tables
  rt_public_alb_cidr  = var.rt_public_alb_cidr
  rt_private_eks_cidr = var.rt_private_eks_cidr

  # Security Groups
  sg_alb = var.sg_alb
  sg_eks = var.sg_eks
}

# Connecting ECR module
module "ecr" {
  source   = "./modules/ecr"
  ecr_name = var.ecr_name
  scan_on_push = true
}