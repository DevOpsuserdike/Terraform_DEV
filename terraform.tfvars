aws_region    = "ap-south-1"       # Matches your local location
instance_type = "t2.mini"
instance_name = "WebServer-Dev"
as_private_endpoint = {
  name = "east-vnet1"
  networkname = "d0001"
  subnet = "abc"
}
as_app_setting = {
APP_ENV = "PAT"
}
as_system_properties = {
  debug = "true"
}
