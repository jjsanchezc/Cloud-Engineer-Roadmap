# What's IaC
Is a practice in DevOps ando cloud computing that involves managing, and provisoning computing infrastructure through machine-readable configuration files,  rather than through physical hardware configuration or interactive configuration tools. This approach allows for version control, automation, and consistency in infrastructure deployment, making it easier to manage, scale, and replicate environments while reducing the risk of human error.


# Terraform 

that helps you set up, manage, and update infrastructure safely and efficiently across various cloud providers. Think of it as a way to define your cloud resources—like servers, storage, and networks—using a simple code format. 

# Components

## Core
uses 2 input sources
- TF-Config: defines what needs to be created and configured
- State: Terraform keeps up to date on how the current set up looks like

The core take a look on the current state and it should be the same as the tf-config, 

---

## how does it work

with the .tf files it contacts the cloud providers thanks to a provider that they create between the file and the api of the cloud provider

Terraform config -> Terraform Provider -> Target API 
Write(define infra in config files) -> Plan (Review the changes Terraform will make to your infra) -> Apply (Terraform updates the state file


## Core Concepts

### Providers

plugin used to interact with Cloud providers APIs

when initializing terraform, will create 2 things:
- .terraform.lock.hcl:
       - information on the particular provider
- .terraform (dir):
       - stores the info related to the infra such as the providers, modules

### Resources

Defines the Actual components of the infrastructure

#### Meta-Arguments

special arguments that can be used with every source
List:
- depends_on
- count
- for_each
- provider
- lifecycle


### HCL Language features


### Statement management

### Terraform state
terraform state is a record of everything we provision or create/mange/delete it our infra, and thats how terraform keeps track of the desire and current state

Tf has a statefile (state file terraform.tfstate)

tf will compare the current and the desired state, it will add/rm things from the current state, and at the same time it will overwrite the terraform.tfstate

#### State drift
when our actual infra isn't equal as the tfstate file
if you manually delete a particular resource the resource will be existing in the state file but in reality it doesn't exits

a way to prevent it:
- Use tf plan command (config file):
       the plan will compare the current with the state

- Terraform refresh:
       in the first scenario we assume it was done by mistake my someone
       in this example was intentional,it will not make any changes to the infra, it will only update the tf statefile
#### Backend config

- Sensitive data will be visible at the statefile, so it can't be on a visible space
- backend block defines where terraform stores its state datafiles

### Variables and Outputs
-  a way to make the code more reusable and readable
- Types:
       - Input variables
       - Output variable 

Variables can be referenced throughout the configuration using the `var` prefix. This system enables infrastructure as code to be more dynamic and adaptable to different environments or use cases.

Local values are referred to as locals and can be declared using the locals block. Local values can be a literal constants, resource attributes, variables, or other local values. Local values are helpful to define expressions or values that you need to use multiple times in the module as it allows the value to be updated easily just by updating the local value. A local value can be accessed using the local argument like local.<value_name>.

to gice value to input vcariables its a good practice to create a `terraform.tfvars` file
if we want to give the tfvars other name, we could use the `tf plan -var-file="<location>.tfvars"`
If we want to create different files of vars `*.auto.tfvars`
For Environment variables `TF_VAR_<name>`, this one is used to store credentials
Default variable variable.tf

#### Variable precedence

If we have multiple ways to define a variable, it will depend on the priority of each file
from hig to low:
- -var or -var-file
- terraform.tfvars
- *.auto.tfvars
- TF_VAR_<name>
- variables.tf
### Modules
Divide  everything into reusable components called `modules`  
types of modules:
- `root` module (default)
- `child` module
- `published` modules : could be called from terraform registry, there are modules created by providers