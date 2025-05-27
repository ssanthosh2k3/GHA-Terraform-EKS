output "cluster_name" {
  value       = aws_eks_cluster.dev-eks-cluster
  description = "The name of the EKS cluster"
}
