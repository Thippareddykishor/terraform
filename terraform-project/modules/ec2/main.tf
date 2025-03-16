resource "aws_instance" "instance" {
  //count = length(var.instances)
  //for_each = var.instances
  
  //instance_type = each.value.instance_type
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_id
  tags = {
    //Name=var.instances[count.index]
  //Name=each.key
  Name ="${var.name}-${var.env}"
 

  }
}

resource "aws_route53_record" "record" {
  //count = length(var.instances)
  //for_each = var.instances
  type = "A"
  ttl = 0
  name = "${var.name}-${var.env}"
  records = [aws_instance.instance.private_ip]
  zone_id = var.zone_id
}

resource "null_resource" "name" {
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "ec2-user"
      password = "DevOps321"
      host = aws_instance.instance.private_ip
    }
    inline = [ 
      "sudo pip3.11 install ansible",
      "ansible-pull -i localhost, -U https://github.com/raghudevopsb83/roboshop-ansible roboshop.yml -e component_name=${var.name} -e env=${var.env}"
     ]
  }
}

