output "cluster_id" {
  description = "The ID of the EKS cluster"
  value       = aws_eks_cluster.lanchonete.id
}

output "cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = aws_eks_cluster.lanchonete.endpoint
}

output "cluster_certificate_authority_data" {
  description = "The certificate authority data for the EKS cluster"
  value       = aws_eks_cluster.lanchonete.certificate_authority[0].data
}
