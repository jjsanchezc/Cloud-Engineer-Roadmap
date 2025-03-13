terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

resource "local_file" "file1" {
       content = var.file1_content
       filename = "${path.module}/${var.filename_1}"
}