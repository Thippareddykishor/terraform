resource "local_file" "name" {
filename = "a.txt"
  content = var.content==null ? "null content" : var.content
}

variable "content" {
  default = null
}

#condition is all about what value to give to a argument

resource "null_resource" "test" {
  count = var.content==0 ? 0 :1
}