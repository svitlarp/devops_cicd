# Створення EKS-кластера

resource "aws_eks_cluster" "lesson6-eks" {
  name = var.eks_cluster_name

  access_config {
    authentication_mode = "API"  # Автентифікація через API
    bootstrap_cluster_creator_admin_permissions = true   # Надає адміністративні права користувачу, який створив кластер
  }

  role_arn = aws_iam_role.lesson-6-eks-iam-role.arn
  version  = "1.35"

  vpc_config {
    endpoint_private_access = true   # Включає приватний доступ до API-сервера
    endpoint_public_access  = true   # Включає публічний доступ до API-сервера
    subnet_ids = [
      subnet_eks_a.id,
      subnet_eks_b.id
    ]
  }

  # Ensure that IAM Role permissions are created before and deleted
  # after EKS Cluster handling. Otherwise, EKS will not be able to
  # properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.lesson-6-eks-policy-attach,
  ]
}

resource "aws_iam_role" "lesson-6-eks-iam-role" {
  name = var.cluster_iam_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sts:AssumeRole",
          "sts:TagSession"
        ]
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lesson-6-eks-policy-attach" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.lesson-6-eks-iam-role.name
}