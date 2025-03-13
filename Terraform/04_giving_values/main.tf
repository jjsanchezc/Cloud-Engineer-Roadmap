terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

resource "local_file" "example1" {
       content = "Hello, World!"
       filename = "${path.module}/${var.filename}.txt"
}