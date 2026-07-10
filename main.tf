resource "aws_instance" "web" {
  ami           = "ami-002192a70217ac181" # Ubuntu Server 24.04 LTS (ap-south-1)
  instance_type = var.instance_type
}

