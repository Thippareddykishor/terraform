locals {
  ami_id = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  name = "${var.project}-${var.environment}-${var.component}-changed"
}