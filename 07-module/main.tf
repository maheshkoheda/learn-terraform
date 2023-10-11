 module "test" {
  source = "./local-module"
   #step-2 sending declared variable to localmodule
  instance_type =var.instance_type
}
output "test" {
  value = module.test
}
# Step-1 Declaring variable in root module
variable "instance_type" {
  default = "t3.micro"
}
