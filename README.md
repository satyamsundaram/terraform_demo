### About
- /vpc_network contains terraform files for creating a VPC network in GCP
- /gke_node_pool contains terraform files for creating a GKE cluster in GCP with tainted node_pools. It makes use of the gke module.

### Create a service account with the following roles:
- roles/compute.viewer
- roles/compute.securityAdmin (only required if add_cluster_firewall_rules is set to true)
- roles/kubernetes_engine.clusterAdmin
- roles/kubernetes_engine.developer
- roles/iam.serviceAccountAdmin
- roles/iam.serviceAccountUser
- roles/resourcemanager.projectIamAdmin (only required if service_account is set to create)

### Enable the following APIs:
- compute.googleapis.com
- kubernetesengine.googleapis.com
- iam.googleapis.com
- cloudresourcemanager.googleapis.com

### Terraform how to:
- terraform has directory-level granularity, so you need to run terraform commands from within the directory where the terraform files are located
- terraform init: initialize a working directory containing Terraform configuration files
- terraform fmt: format the configuration files in the current directory for readability
- terraform validate: validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc
- terraform plan: create an execution plan
- terraform apply: apply the changes required to reach the desired state of the configuration
- terraform show: provide human-readable output from a state or plan file
- terraform destroy: destroy Terraform-managed infrastructure
