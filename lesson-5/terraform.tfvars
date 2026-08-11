aws_region = "eu-north-1"

# vpc
vpc_name = "lesson5-vpc"
vpc_cidr = "10.0.0.0/16"

# subnets
# public subnets
subnet_alb_a_name = "subnet-public-alb-1a"
subnet_alb_a_cidr = "10.0.1.0/24"
subnet_alb_a_az   = "eu-north-1a"

subnet_alb_b_name = "subnet-public-alb-1b"
subnet_alb_b_cidr = "10.0.2.0/24"
subnet_alb_b_az   = "eu-north-1b"

subnet_alb_c_name = "subnet-public-alb-1b"
subnet_alb_c_cidr = "10.0.3.0/24"
subnet_alb_c_az   = "eu-north-1c"

# private subnets
subnet_eks_a_name = "subnet-private-eks-1a"
subnet_eks_a_cidr = "10.0.4.0/24"
subnet_eks_a_az   = "eu-north-1a"

subnet_eks_b_name = "subnet-private-eks-1b"
subnet_eks_b_cidr = "10.0.5.0/24"
subnet_eks_b_az   = "eu-north-1b"

subnet_eks_c_name = "subnet-private-eks-1c"
subnet_eks_c_cidr = "10.0.6.0/24"
subnet_eks_c_az   = "eu-north-1c"

# igw
igw_alb_name = "igw-public-alb"

# nat 
nat_eks_a_name = "nat-private-eks-a"
nat_eks_b_name = "nat-private-eks-b"
nat_eks_c_name = "nat-private-eks-c"

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

# EKS 
# Cluster
eks_cluster_name = "lesson-7-eks"
eks_cluster_iam_role_name = "lesson-7-eks-iam-role"

# Node group
eks_node_group_name = "lesson7-node-gr"
eks_node_group_iam_role_name = "eks-node-gr-iam"