# vpc
variable "vpc_name" {
  type        = string
  description = "Name Tag for VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

# subnet_alb_a
variable "subnet_alb_a_name" {
  type        = string
  description = "Name Tag for public subnet subnet_alb_a"
}

variable "subnet_alb_a_cidr" {
  type        = string
  description = "CIDR block for public subnet subnet_alb_a"
}

variable "subnet_alb_a_az" {
  type        = string
  description = "Avialability zones for public subnet_alb_a"
}

# subnet_alb_b
variable "subnet_alb_b_name" {
  type        = string
  description = "Name Tag for public subnet subnet_alb_b"
}

variable "subnet_alb_b_cidr" {
  type        = string
  description = "CIDR block for public subnet subnet_alb_b"
}

variable "subnet_alb_b_az" {
  type        = string
  description = "Avialability zones for public subnet_alb_b"
}

# subnet_ecs_a
variable "subnet_ecs_a_name" {
  type        = string
  description = "Name Tag for private subnet subnet_ecs_a"
}

variable "subnet_ecs_a_cidr" {
  type        = string
  description = "CIDR block for private subnet subnet_ecs_a"
}

variable "subnet_ecs_a_az" {
  type        = string
  description = "Avialability zones for private subnet_ecs_a"
}

# subnet_ecs_b
variable "subnet_ecs_b_name" {
  type        = string
  description = "Name Tag for private subnet subnet_ecs_b"
}

variable "subnet_ecs_b_cidr" {
  type        = string
  description = "CIDR block for private subnet subnet_ecs_b"
}

variable "subnet_ecs_b_az" {
  type        = string
  description = "Avialability zones for private subnet_ecs_b"
}

# internet gateway
variable "igw_alb_name" {
  type        = string
  description = "Internet Gateway for ALB"
}

# NAT gateway
variable "nat_ecs_a_name" {
  type        = string
  description = "NAT for ALB 1a"
}

variable "nat_ecs_b_name" {
  type        = string
  description = "NAT for ALB 1b"
}


# route table_name
variable "rt_public_alb_cidr" {
  type        = string
  description = "CIDR block for Route Table ALB"
}

variable "rt_private_ecs_cidr" {
  type        = string
  description = "CIDR block for Route Table ECS"
}

# security group
variable "sg_alb" {
  type        = string
  description = "Security Group for Application Load Balancer"
}

variable "sg_ecs" {
  type        = string
  description = "Security Group for Elascic Container Service"
}




