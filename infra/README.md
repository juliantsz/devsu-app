# devsu-infra

For the infra the code creates the following resources:
- vpc
- three public and three private subnets
- one internet gateway
- one nat gateway for internet access to private resources
- two routing tables, one for the public subnets and one for the private subnets
- security groups
- one kubernetes cluster
- kubernetes addons like kube-proxy, vpc cni, core dns
- ec2 spot nodes

To create the infra we must follow the following steps
- Navigate to the `infra/aws/dev` 
- Run `terraform init` to initialize the modules and download the providers
- Run `terraform plan` to see what will be created
- Finally a `terraform apply` to create the resources


In the `k8s` folder we find the resources used for the cluster configuration
- `alb-controller` creates the resources to install the amazon alb ingress controller plugin. This allows us to expose services that are in the kubernetes cluster
- `argocd` installs argocd components
