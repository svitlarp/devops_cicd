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

subnet_eks_a_name = "subnet-private-eks-1a"
subnet_eks_a_cidr = "10.1.1.0/25"
subnet_eks_a_az   = "eu-north-1a"

subnet_eks_b_name = "subnet-private-eks-1b"
subnet_eks_b_cidr = "10.1.1.128/25"
subnet_eks_b_az   = "eu-north-1b"

# igw
igw_alb_name = "igw-public-alb"

# nat 
nat_eks_a_name = "nat-private-eks-a"
nat_eks_b_name = "nat-private-eks-b"

# route tables 
rt_public_alb_cidr  = "0.0.0.0/0"
rt_private_eks_cidr = "0.0.0.0/0"

# security group
sg_alb = "lesson-5-sg-alb"
sg_eks = "lesson-5-sg-eks"

# ECR
ecr_name = "lesson-5-ecr"

# S3 terraform state
s3_bucket_name = "lesson5-s3-tfstate"

# DynamoDB terraform state
dynamo_db_table_name = "lesson5-dynamodb-tfstate"
