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
  value = "var.fruit"
}