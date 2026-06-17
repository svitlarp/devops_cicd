provider "aws" {
  region = var.aws_region
}

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

  # Private Subnet ECS
  subnet_ecs_a_name = var.subnet_ecs_a_name
  subnet_ecs_a_cidr = var.subnet_ecs_a_cidr
  subnet_ecs_a_az   = var.subnet_ecs_a_az

  subnet_ecs_b_name = var.subnet_ecs_b_name
  subnet_ecs_b_cidr = var.subnet_ecs_b_cidr
  subnet_ecs_b_az   = var.subnet_ecs_b_az

  igw_alb_name   = var.igw_alb_name
  nat_ecs_a_name = var.nat_ecs_a_name
  nat_ecs_b_name = var.nat_ecs_b_name

  rt_public_alb_cidr  = var.rt_public_alb_cidr
  rt_private_ecs_cidr = var.rt_private_ecs_cidr
}

