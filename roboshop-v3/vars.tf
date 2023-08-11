variable "security_groups" {
  default = [ "sg-01eb9b07e2a904b4d" ]
}

variable "zone_id" {
  default = "Z05775253JDMGSEH85KOY"
}

variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
    cart = {
      name          = "cart"
      instance_type = "t3.micro"
    }
  }
}
