provider "aws" {
  region = var.aws_region
}

resource "aws_eks_cluster" "lanchonete" {
  name     = "lanchonete-cluster"
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

resource "aws_eks_node_group" "lanchonete_nodes" {
  cluster_name    = aws_eks_cluster.lanchonete.name
  node_group_name = "lanchonete-nodes"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }
}
