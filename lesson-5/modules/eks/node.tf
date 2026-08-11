# Creating EKS Node Group
resource "aws_eks_node_group" "lesson7_node_gr" {
  cluster_name    = var.eks_cluster_name
  node_group_name = var.eks_node_group_name 
  node_role_arn   = aws_iam_role.lesson7_node_gr_iam_role.arn
  subnet_ids = var.subnet_ids

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.lesson7_node_gr_iam_role_AmazonEKSWorkerNodeMinimalPolicy,
    aws_iam_role_policy_attachment.lesson7_node_gr_iam_role_AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.lesson7_node_gr_iam_role_AmazonEC2ContainerRegistryReadOnly,
    aws_iam_role_policy_attachment.lesson7_node_gr_iam_role_AmazonEC2ContainerRegistryPullOnly,
    aws_iam_role_policy_attachment.lesson7_node_gr_iam_role_AmazonCloudWatchAgentServerPolicy
  ]
}

resource "aws_iam_role" "lesson7_node_gr_iam_role" {
  name = var.eks_node_group_iam_role_name  

  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

resource "aws_iam_role_policy_attachment" "lesson7_node_gr_iam_role_AmazonEKSWorkerNodeMinimalPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy"
  role       = aws_iam_role.lesson7_node_gr_iam_role.name
}

resource "aws_iam_role_policy_attachment" "lesson7_node_gr_iam_role_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = aws_iam_role.lesson7_node_gr_iam_role.name
}

resource "aws_iam_role_policy_attachment" "lesson7_node_gr_iam_role_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = aws_iam_role.lesson7_node_gr_iam_role.name
}

resource "aws_iam_role_policy_attachment" "lesson7_node_gr_iam_role_AmazonEC2ContainerRegistryPullOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly"
  role       = aws_iam_role.lesson7_node_gr_iam_role.name
}

resource "aws_iam_role_policy_attachment" "lesson7_node_gr_iam_role_AmazonCloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonCloudWatchAgentServerPolicy"
  role       = aws_iam_role.lesson7_node_gr_iam_role.name
}