GLOBAL INFRASTRUCTURE
===

This terraform repository create :
- 2 VPC: dev and prod
- 3 subnet by VPC : service, front and backend
- NFS server by environment
- 1 RDS network by environment

GLobal:
```
terraform plan -var-file=env_global.tfvars -state=terraform-global.tfstate
terraform apply -var-file=env_global.tfvars -state=terraform-global.tfstate
```

Dev:
```
terraform plan  -var-file=dev/env_dev.tfvars  -state=dev/terraform-dev.tfstate
terraform apply  -var-file=dev/env_dev.tfvars  -state=dev/terraform-dev.tfstate
```

Prod:
```
terraform plan -var-file=prod/env_prod.tfvars  -state="prod/terraform-prod.tfstate"
terraform apply -var-file=prod/env_prod.tfvars  -state="prod/terraform-prod.tfstate"
```
