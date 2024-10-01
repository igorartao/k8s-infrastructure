variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "sa-east-1"
}

variable "cluster_role_arn" {
  description = "The IAM role ARN for the EKS cluster"
  type        = string
  default     = "arn:aws:iam::575108949905:role/GitHubActionsRoleEKS"
}

variable "node_role_arn" {
  description = "The IAM role ARN for the EKS node group"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster"
  type        = list(string)
  default     = ["subnet-088a80b4161a2dc87", "subnet-0b34f5357b0264927", "subnet-09d730b38176a5e2b"]
}
