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

# Internet Gateway
output "igw_alb_id" {
  description = "The ID of the Internet Gateway for Application Load Balancer"
  value       = aws_internet_gateway.alb.id
}

# Elastic IPs
output "eip_ecs_a" {
  description = "The ID of the EIP for private subnet a"
  value       = aws_eip.nat_ecs_a.id
}

output "eip_ecs_b" {
  description = "The ID of the EIP for private subnet b"
  value       = aws_eip.nat_ecs_b.id
}

# NAT gateway
output "nat_ecs_a_id" {
  description = "The ID of the NAT Gateway for ECS"
  value       = aws_nat_gateway.ecs_a.id
}

output "nat_ecs_b_id" {
  description = "The ID of the NAT Gateway for ECS"
  value       = aws_nat_gateway.ecs_b.id
}

# Route tables
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

# Security Groups
output "sg_alb" {
  description = "The ID security group ALB"
  value       = aws_security_group.alb.id
}

output "sg_ecs" {
  description = "The ID security group ECS"
  value       = aws_security_group.ecs.id
}