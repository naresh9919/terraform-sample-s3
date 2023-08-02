provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "Jenkins-instance" {
  ami           = var.os-name
  instance_type = var.instance-type
  key_name = var.key-pair

  tags = {
    Name = "Jenkins-instance"
  }
}
