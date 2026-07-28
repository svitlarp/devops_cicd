# EKS Cluster
variable "eks_cluster_name" {
  type        = string
  description = "The Name of EKS Cluster"
}

# EKS Cluster IAM Role
variable "cluster_iam_role_name" {
  type        = string
  description = "The Name of EKS Cluster IAM Role"
}

