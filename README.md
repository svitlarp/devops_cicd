## Terraform structure for the infrastructure on AWS 


1. Synchronization of state files in S3 using DynamoDB for locking.

2. Network infrastructure (VPC) with public and private subnets.

3. ECR (Elastic Container Registry) for storing Docker images.


```
$ terraform init
```

```
$ terraform plan
```

```
$ terraform apply
```

```
$ terraform destroy
```