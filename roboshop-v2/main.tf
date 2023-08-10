variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "security_groups" {
  default = [ "sg-01eb9b07e2a904b4d" ]
}

variable "instance_type" {
  default = "t3.small"
}

variable "zone_id" {
  default = "Z05775253JDMGSEH85KOY"
}
variable "components" {
  default = {
    frontend = {}
    catalogue = {}
    mongodb = {}
    user = {}
    redis = {}
    cart = {}
    mysql = {}
    shipping = {}
    payment = {}
    rabbitmq = {}

  }
}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.value, each.key, null)
  }
}

resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value, each.key, null)}.maheshkoheda.online"
  type    = "A"
  ttl     = 300
  records = [lookup(lookup(aws_instance.instance,each.key, null),"private_ip", null) ]
}

output "instances" {
  value = aws_instance.instance
}
