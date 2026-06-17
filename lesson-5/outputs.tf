output "vpc" {
  description = "The ID of the VPC main"
  value       = module.vpc.vpc_id
}