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
