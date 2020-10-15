provider "aws" {
  region     = var.aws_region
}

resource "aws_instance" "example" {
  ami                         = "ami-0cd3dfa4e37921605"
  instance_type               = var.instance_type
  associate_public_ip_address = false
  key_name                    = "tf-training"
  subnet_id                   = ""

  tags = {
    Name = "${var.application_name}-ec2"
  }
}
