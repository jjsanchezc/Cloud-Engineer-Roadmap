resource "aws_s3_bucket" "tf_s3_images_bucket" {
  bucket = "tf-project-images"

  tags = {
    Name        = "My bucket for images"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "tf_s3_object" {
  bucket = aws_s3_bucket.tf_s3_images_bucket.bucket # Reference the bucket resource, so if the name changes in the future it will be updated here as well
  for_each = fileset("../public/images", "**") # Upload all files in the directory 
  key    = "images/${each.key}" # The name of the object once it is in the bucket
  source = "../public/images/${each.key}" # The path to the file to upload
}