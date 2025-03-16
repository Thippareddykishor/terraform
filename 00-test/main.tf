# Request a spot instance at $0.03
resource "aws_spot_instance_request" "cheap_worker" {
  ami           = "ami-1234"
  spot_price    = "0.0.0081"
  instance_type = "t2.small"

  tags = {
    Name = "CheapWorker"
  }
}