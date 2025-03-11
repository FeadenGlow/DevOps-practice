provider "aws" {
  region = var.region
}

resource "aws_key_pair" "my_key" {
    key_name = "my-key"
    public_key = file(var.public_key_path)
}

resource "aws_instance" "example" {
  count = 2
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = aws_key_pair.my_key.key_name

   user_data = <<-EOF
              #!/bin/bash
              echo '${file(var.public_teacher_key_path)}' >> /home/ubuntu/.ssh/authorized_keys
              EOF

  tags = {
    Name = "MyTerraformInstance"
  }
}

resource "aws_security_group" "my_sg" {
  name = "my-security-group"
  description = "Security group for Terraform-created instances"
  vpc_id = var.vpc_id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 5432
    to_port = 5435
    protocol = "tcp"
    cidr_blocks = ["172.31.88.232/32", "172.31.80.152/32"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

