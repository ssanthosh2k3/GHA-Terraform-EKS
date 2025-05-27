output "cluster_name" {
  value       = aws_eks_cluster.your_cluster_resource_name.name
  description = "The name of the EKS cluster"
}
