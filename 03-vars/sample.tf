#Plain variable
variable "fruit_name" {
  default= "apple"
}

output "fruit_name" {
  value = var. fruit_name
}
#List variable
variable "fruits" {
  default = [
  "apple",
  "banana"
  ]
  // default = [ "apple", "banana" ]
}

#Map variable
Variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}
#Map variable, Map of maps
variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 100
      price = 3
    }
    banana = {
      stock = 400
      price = 1
    }
  }
}