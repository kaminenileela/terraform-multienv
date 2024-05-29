# To execute in multienvironment using tfvars, follow below steps

# cd tfvars
* terraform init -backend-config=dev/backend.tf
* terraform plan -var-file=dev/dev.tfvars
* terraform apply -var-file=dev/dev.tfvars -auto-approve


# to execute for production 
* terraform init -reconfigure -backend-config=prod/backend.tf (-reconfigure is used if init is already performed)
* terraform plan -var-file=prod/prod.tfvars
* terraform apply -var-file=prod/prod.tfvars -auto-approve

# To execute in multienvironment using workspaces, follow below steps

* cd workspaces
* terraform init -reconfigure
* terraform workspace list (to list all workspaces)
* terraform workspace new dev (to create new workspace)
* terraform workspace new prod
* terraform workspace select dev (points *)
* terraform gives a variable called "terraform.workspace" whose value is equal to workspace name (if workspace dev is selected terraform.workspace value is dev)