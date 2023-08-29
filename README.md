### About
/vpc_network contains terraform files for creating a VPC network in GCP
/gke_node_pool contains terraform files for creating a GKE cluster in GCP with tainted node_pools. It makes use of the gke module.

### Terraform how to:
- terraform has directory-level granularity, so you need to run terraform commands from within the directory where the terraform files are located
- terraform init: initialize a working directory containing Terraform configuration files
- terraform fmt: format the configuration files in the current directory for readability
- terraform validate: validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc
- terraform plan: create an execution plan
- terraform apply: apply the changes required to reach the desired state of the configuration
- terraform show: provide human-readable output from a state or plan file
- terraform destroy: destroy Terraform-managed infrastructure

### Terraform variables:
- variables.tf: contains the variables used in the terraform files
- terraform.tfvars: contains the values for the variables
- terraform.tfstate: contains the state of the infrastructure
- terraform.tfstate.backup: backup of the terraform.tfstate file
- .terraform.lock.hcl: contains the lock information for the dependencies of the configuration
- .terraform: contains the plugins and modules downloaded by terraform
- locals.tf: contains the local values for the variables
- outputs.tf: contains the output values for the variables
- versions.tf: contains the versions of the providers used in the terraform files
- backend.tf: contains the configuration for the remote backend
- provider.tf: contains the configuration for the providers used in the terraform files
- main.tf: contains the resources used in the terraform files
- variables.auto.tfvars: contains the values for the variables that are not defined in the terraform.tfvars file
