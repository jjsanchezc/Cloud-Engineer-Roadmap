resource "local_file" "example1" {
  filename = "${path.module}/example1.txt"
  content  = "This is an example file."
}

resource "local_file" "example2" {
  filename = "${path.module}/example2.txt"
  content  = "This is another example file."
}

resource "local_sensitive_file" "example3" {
  filename = "${path.module}/example3.txt"
  content  = "This is a sensitive example file."
}
