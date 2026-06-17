aws_region = "eu-north-1"

# vpc
vpc_name = "lesson5-tf"
vpc_cidr = "10.1.0.0/16"

# subnets
subnet_alb_a_name = "subnet-public-alb-1a"
subnet_alb_a_cidr = "10.1.0.0/25"
subnet_alb_a_az = "eu-north-1a"

subnet_alb_b_name = "subnet-public-alb-1b" 
subnet_alb_b_cidr = "10.1.0.128/25"
subnet_alb_b_az = "eu-north-1b"

subnet_ecs_a_name = "subnet-private-ecs-1a"
subnet_ecs_a_cidr = "10.1.1.0/25"
subnet_ecs_a_az = "eu-north-1a"

subnet_ecs_b_name = "subnet-private-ecs-1b" 
subnet_ecs_b_cidr = "10.1.1.128/25"
subnet_ecs_b_az = "eu-north-1b"

# igw
igw_alb_name = "igw-public-alb"

# nat 
nat_ecs_a_name = "nat-private-ecs-a"
nat_ecs_b_name = "nat-private-ecs-b"

# route tables 
rt_public_alb_cidr = "0.0.0.0/0"
rt_private_ecs_cidr = "0.0.0.0/0"

# vpc
output "vpc_id" {
  description = "The ID of the VPC main"
  value       = aws_vpc.main.id
}

# subnets
output "subnet_alb_a_id" {
  description = "The ID of the subnet subnet_alb_a"
  value       = aws_subnet.alb_a.id
}

output "subnet_alb_b_id" {
  description = "The ID of the subnet subnet_alb_b"
  value       = aws_subnet.alb_b.id
}

output "subnet_ecs_a_id" {
  description = "The ID of the subnet subnet_ecs_a"
  value       = aws_subnet.ecs_a.id
}

output "subnet_ecs_b_id" {
  description = "The ID of the subnet subnet_ecs_b"
  value       = aws_subnet.ecs_b.id
}

output "igw_alb_id" {
  description = "The ID of the Internet Gateway for Application Load Balancer"
  value       = aws_internet_gateway.alb.id
}

output "eip_ecs_a" {
  description = "The ID of the EIP for private subnet a"
  value       = aws_eip.nat_ecs_a.id
}

output "eip_ecs_b" {
  description = "The ID of the EIP for private subnet b"
  value       = aws_eip.nat_ecs_b.id
}

output "nat_ecs_a_id" {
  description = "The ID of the NAT Gateway for ECS"
  value       = aws_nat_gateway.ecs_a.id
}

output "nat_ecs_b_id" {
  description = "The ID of the NAT Gateway for ECS"
  value       = aws_nat_gateway.ecs_b.id
}

output "rt_public_alb_id" {
  description = "The ID of route table ALB"
  value       = aws_route_table.public_alb.id
}

output "rt_private_ecs_a_id" {
  description = "The ID of route table ECS a"
  value       = aws_route_table.private_ecs_a.id
}

output "rt_private_ecs_b_id" {
  description = "The ID of route table ECS b"
  value       = aws_route_table.private_ecs_b.id
}