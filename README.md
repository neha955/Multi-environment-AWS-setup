## Terraform demo

Demo to showcase tf modules and workspaces

First we init terraform and can run following commands:

```sh
terraform init
terraform workspace list           
terraform workspace new dev        
terraform workspace select dev     
terraform apply -var-file=env/dev.tfvars
terraform apply -var-file=env/staging.tfvars
terraform apply -var-file=env/prod.tfvars
terraform destroy -var-file=env/dev.tfvars
```

Each workspace maintains its own state in terraform.tfstate.d/workspace-name/