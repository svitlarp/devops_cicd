aws_region = "eu-north-1"

# vpc
vpc_name = "lesson5-tf"
vpc_cidr = "10.1.0.0/16"

# subnets
subnet_alb_a_name = "subnet-public-alb-1a"
subnet_alb_a_cidr = "10.1.0.0/25"
subnet_alb_a_az   = "eu-north-1a"

subnet_alb_b_name = "subnet-public-alb-1b"
subnet_alb_b_cidr = "10.1.0.128/25"
subnet_alb_b_az   = "eu-north-1b"

subnet_ecs_a_name = "subnet-private-ecs-1a"
subnet_ecs_a_cidr = "10.1.1.0/25"
subnet_ecs_a_az   = "eu-north-1a"

subnet_ecs_b_name = "subnet-private-ecs-1b"
subnet_ecs_b_cidr = "10.1.1.128/25"
subnet_ecs_b_az   = "eu-north-1b"

# igw
igw_alb_name = "igw-public-alb"

# nat 
nat_ecs_a_name = "nat-private-ecs-a"
nat_ecs_b_name = "nat-private-ecs-b"

# route tables 
rt_public_alb_cidr  = "0.0.0.0/0"
rt_private_ecs_cidr = "0.0.0.0/0"

# security group
sg_alb = "lesson-5-sg-alb"
sg_ecs = "lesson-5-sg-ecs"

# ECR
ecr_name = "lesson-5-ecr"
