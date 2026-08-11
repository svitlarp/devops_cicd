# EKS Cluster
variable "eks_cluster_name" {
  type        = string
  description = "The Name of EKS Cluster"
}

variable "eks_cluster_iam_role_name" {
  type        = string
  description = "The Name of EKS Cluster IAM Role"
}

# EKS Node Group
variable "eks_node_group_name" {
  type        = string
  description = "The Name of EKS Node Group"
}

variable "eks_node_group_iam_role_name" {
  type        = string
  description = "The Name of EKS IAM Role for Node Group"
}

# EKS Subnet-IDs
variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs for EKS Cluster"
}
