aws_region    = "ap-south-1"       # Matches your local location
instance_type = "t2.micro"
instance_name = "WebServer-Dev"
name = "Siddhesh"
as_private_endpoint = {
  name = "east-vnet1"
  networkname = "d0002"
  subnet = "abc"
}
