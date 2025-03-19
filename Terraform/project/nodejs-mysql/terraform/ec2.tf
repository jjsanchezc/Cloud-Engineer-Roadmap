/*
1. ec2 instance3 resource
2. new security group
       - 22(ssh)
       - 443(https)
       - 3000 (nodejs)
*/

resource "aws_instance" "tf_ec2_instance" {
  ami           = "ami-0cb91c7de36eed2cb" # ubuntu
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "terraform_key" # 2 ways to create it, using a terraform resource or using the aws console
  vpc_security_group_ids = [aws_security_group.tf_ec2_sg.id]
  depends_on = [aws_s3_object.tf_s3_object]
  user_data = <<-EOF
              #!/bin/bash
              
              sudo apt-get update
              sudo apt-get update -y
              sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common gnupg
              curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
              echo \
              "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
              $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
              sudo apt-get install -y docker-ce docker-ce-cli containerd.io
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo docker pull jjsanchez1/github-actions:master
              sudo docker run -d -p 80:3000 jjsanchez1/github-actions:master
              EOF


  tags = {
    Name = "Nodejs-server"
  }
}