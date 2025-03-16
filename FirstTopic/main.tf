#Normal variable
variable "x" {
   default = 10
}

#print variable on output
output "x" {
  value = var.x
}

#if value is just variable var.x if it is combination of string ${var.x}
output "x1" {
  value = "Value of x - ${var.x}"
}

#List
variable "y" {
  default = [1,"abc",0.4,false]
}

output "y1" {
  value = var.y[0]
}

#map
variable "z" {
  default = {
    name="kishor"
    age="28"
  }
}

output "z1" {
  value = "Name is ${var.z["name"]} And Age is ${var.z.age}"
}

#access variables from another file
#we have two types manully loaded and automated loaded

#tfvars manual loaded
variable "input" {}
output "input" {
  value = var.input
}

#automatacally loaded
variable "class" {}
output "class" {
  value = var.class
}