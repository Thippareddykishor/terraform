resource "null_resource" "name" {
  count = length(var.x)
  provisioner "local-exec" {
    command = "echo ${var.x[count.index]}"
  }
}

variable "x" {
  default = [
    1,
    "sd",
    100,
    300
  ]
}