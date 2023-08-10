variable "components" {
  default = ["frontend", "mongodb"]
}
resource "aws_instance" "instance" {
  count = length(var.components)

  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-01eb9b07e2a904b4d"]
  tags                   = {
    Name = ""
  }
}
