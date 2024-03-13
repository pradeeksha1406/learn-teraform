variable "fruit" {
  default = "apple"

}

variable "fruits" {
  default = ["apple", "mango"]

}

variable "fruit_price" {
  default = {
    apple = 10
    mango = 20
      }
  }


output "fruit" {
  value = var.fruit
}

output "first_fruit" {
  value = var.fruits[0]
}

output "first_price" {
  value = "The price of apple is == ${var.fruit_price["apple"]}"
}