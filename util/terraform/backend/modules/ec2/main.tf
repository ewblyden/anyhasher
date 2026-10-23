resource "aws_instance" "ewbly-anyhasher_server" {
  ami           = "ami-02ad619be5bc165df"
  instance_type = "t2.micro"
  key_name      = "ewbly.gmail.KeyPair"

  tags = {
    Name    = var.instance_name,
    Purpose = "Course"
  }
}

variable "instance_name" {
  description = "Terraform EC2 instance name"
}

output "ec2_public_ip" {
  value = aws_instance.ewbly-anyhasher_server.public_ip
}

output "ec2_public_url" {
  value = aws_instance.ewbly-anyhasher_server.public_dns
}

