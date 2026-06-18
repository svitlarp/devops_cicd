# Application Load Balancer

resource "aws_security_group" "alb" {
  name        = var.sg_alb
  description = "Allows HTTP traffic from internet"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = var.sg_alb
  }
}


# internet -> ALB :80
resource "aws_vpc_security_group_ingress_rule" "alb_from_http" {
  security_group_id = aws_security_group.alb.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

# ALB -> ECS :3000
resource "aws_vpc_security_group_egress_rule" "alb_to_ecs" {
  security_group_id            = aws_security_group.alb.id
  referenced_security_group_id = aws_security_group.ecs.id # ??
  from_port                    = 3000
  ip_protocol                  = "tcp"
  to_port                      = 3000
}



# Elascic Container Service (ECS)

resource "aws_security_group" "ecs" {
  name        = var.sg_ecs
  description = "Allows 3000 from ALB, 443 out for AWS services"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = var.sg_ecs
  }
}

# ALB -> ECS :3000
resource "aws_vpc_security_group_ingress_rule" "ecs_from_alb" {
  security_group_id            = aws_security_group.ecs.id
  referenced_security_group_id = aws_security_group.alb.id
  from_port                    = 3000
  ip_protocol                  = "tcp"
  to_port                      = 3000
}

# ECS -> AWS services :443 (to reach ECR)
resource "aws_vpc_security_group_egress_rule" "ecs_https_out" {
  security_group_id = aws_security_group.ecs.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}
