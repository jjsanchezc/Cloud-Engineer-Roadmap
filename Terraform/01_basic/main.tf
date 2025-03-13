# simple file resource
resource "local_file" "tf_simple_file_resource" { 
  filename = "${path.module}/simple_file.txt"
  content  = "This is a simple file."
  file_permission = "0777"
}

resource "local_sensitive_file" "tf_sensitive_file_resource" {
  content  = "This is a sensitive file."
  filename = "${path.module}/sensitive-${count.index}.txt"
  count = 3 // create 3 files, this is a meta-argument
}

