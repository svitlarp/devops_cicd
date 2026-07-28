
output "eks-cluster-name" {
    description = "The Name of EKS Cluster"
    value = aws_eks_cluster.lesson6-eks.name
}