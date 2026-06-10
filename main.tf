resource "aws_instance" "web" {
  ami           = "ami-052cab3d74c050516" # Ubuntu Server 24.04 LTS (ap-south-1)
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}