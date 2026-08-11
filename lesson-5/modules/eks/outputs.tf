# EKS cluster
output "eks_cluster_name" {
    description = "The Name of EKS Cluster"
    value = aws_eks_cluster.lesson7_eks.arn
}

output "eks_cluster_id" {
    description = "The Name of EKS Cluster"
    value = aws_eks_cluster.lesson7_eks.cluster_id
}

output "eks_cluster_iam_role_name" {
    description = "The Name of EKS IAM Role"
    value = aws_iam_role.lesson7_cluster.arn
}

output "eks_cluster_iam_role_id" {
    description = "The ID of EKS IAM Role"
    value = aws_iam_role.lesson7_cluster.unique_id
}


# EKS Node Group
output "eks_node_group_name" {
  description = "The Name of EKS Node Group"
  value       = aws_eks_node_group.lesson7_node_gr.arn
}

output "eks_node_group_id" {
  description = "The ID of EKS Node Group"
  value       = aws_eks_node_group.lesson7_node_gr.id
}

output "eks_node_group_iam_role_name" {
  description = "The Name of EKS Node Group IAM Role"
  value       = aws_iam_role.lesson7_node_gr_iam_role.arn
}

output "eks_node_group_iam_role_id" {
  description = "The ID of EKS Node Group IAM Role"
  value       = aws_iam_role.lesson7_node_gr_iam_role.id
}
