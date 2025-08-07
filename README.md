## Terraform demo

Demo to showcase tf modules and workspaces

First we init terraform and can run following commands:

```sh
terraform init
terraform workspace list           
terraform workspace new dev        
terraform workspace select dev     
terraform apply -var-file=env/dev.tfvars
terraform workspace new staging
terraform workspace select staging
terraform apply -var-file=env/staging.tfvars
terraform workspace new prod
terraform workspace select prod
terraform apply -var-file=env/prod.tfvars
```

Each workspace maintains its own state in terraform.tfstate.d/workspace-name/
