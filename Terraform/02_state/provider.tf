terraform {
  backend local { # This is the local backend configuration
    path = "/home/jjsanchez/Documents/CloudEngineering/Terraform/state_02/state-file/terraform.tfstate"
  }
  

  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}
