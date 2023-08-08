variable "fruits" {
  default = [ "apple", "banana"]
}

output "fruit" {
  //value = var.fruits[2] this will give error since 2nd fruit not available but element loops
  value = element(var.fruits, 2)
}

variable "fruit_with_stock" {
  default = {
    apple = {
      stock = 100
    }
  }
}

output "fruit_stock" {
  value = element(var.fruits, 2)
}
output "fruit_stock_price" {
  value = lookup(var.fruit_wuth_stock["apple"], "price",2)
  // try(var.fruit_with_stock["apple"].price, 2)
}

