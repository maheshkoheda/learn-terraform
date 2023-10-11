  data "aws_ami" "ami" {
    most_recent = true
    name_regex       = "Centos-8-DevOps-Practice"
    owners           = ["973714476881"]

  }

  output "ami" {
    value = data.aws_ami.ami
  }

  resource "aws_instance" "instance" {
    ami                    = data.aws_ami.ami.id
    #step-4 using the received variable in module
    instance_type          = var.instance_type
    vpc_security_group_ids = [ "sg-01eb9b07e2a904b4d" ]
    }
#step-3 receiving the declared variable in localmodule
  variable "instance_type" {}



