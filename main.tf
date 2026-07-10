resource "aws_instance" "web" {
  ami           = "ami-07e88eae8fab7dd8a" # Ubuntu Server 24.04 LTS (ap-south-1)
  instance_type = var.instance_type
}

