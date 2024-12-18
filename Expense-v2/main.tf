module "expense" {
  count     = length(var.expense)
  source    = "./app-create"
  component = var.expense[count.index]
}

variable "expense" {
  default = ["frontend", "backend", "mysql"]
} 