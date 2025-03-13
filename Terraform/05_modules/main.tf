terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

module "file_creator"{
       source = "./file_creator"
       filename_1 ="my_first_file.txt"
       file1_content = "from file1"
}

output "file_paths"{
      value = [
              module.file_creator.file1_path #module.<module_name>.<output.name>
      ]
}