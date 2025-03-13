terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}
locals{
  environment = "dev"
  upper_case = upper(local.environment)
  base_path = "${path.module}/configs/${local.upper_case}"
}

output "filename"{
  value       = local_file.service_configs.filename
  sensitive   = true
  description = "description"
  depends_on  = []
}


resource "local_file" "service_configs" {
  filename = "${local.base_path}/server.sh"
  content  = <<EOT
    environment=dev
  port=3000
  EOT
}


