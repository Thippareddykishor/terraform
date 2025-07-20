# Request a spot instance at $0.03
resource "aws_spot_instance_request" "cheap_worker" {
  ami           = "ami-09c813fb71547fc4f"
  spot_price    = "0.0.0020"
  instance_type = "t2.small"

  tags = {
    Name = "CheapWorker"
  }
}

provider "aws" {
  region = "us-east-1"
}