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
variable "fruit_stock" {
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

# Access list variable, list index starts from zero
output "fruits_first" {
  value = var.fruits[0]
}

#Access map variable
output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}

#Variable data types
variable "fruit_details" {
  default = {
    apple = {
      stock = 300  #number
      price = 1
      type = "washington"  #string
      for_sale = true #boolean
    }
  }
}
#Variable in combination of string then ${}
output "fruit_name_1" {
  value = "Fruit Name = ${var.fruit_name}"
}


output "fruit_details_apple" {
  value = "Apple Stock = ${var.fruit_details["apple"].stock}, Apple Type = ${var.fruit_details["apple"].type},Apple Sale status = ${var.fruit_details["apple"].for_sale}"
}











