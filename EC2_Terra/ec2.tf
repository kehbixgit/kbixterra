resource "aws_instance" "Mykbix2020" {
  ami = "ami-0b898040803850657"
  instance_type = "t2.micro"
  tags = {
      Name = "EC2started_from_console_from_terraform"
  }
  key_name = "ec2demo_1"
  user_data = <<-EOF
                #!/bin/bash
                yum update -y
                yum install -y httpd
                systemctl start httpd.service
                systemctl enable httpd.service
                echo "Hi Friend , This is kbix2020 $(hostname -f) template hosted by Terraform" > /var/www/html/index.html
                EOF
}


