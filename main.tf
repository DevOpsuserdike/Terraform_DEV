resource "aws_instance" "web" {
  ami           = "ami-00adafae70b8029d8" # Ubuntu Server 24.04 LTS (ap-south-1)
  instance_type = var.instance_type
}

