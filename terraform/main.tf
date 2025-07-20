provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2_portfolio" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = ["sg-042dbdd35ca3da5cf"]
  tags = {
    Name = "portfolio-instance"
  }
}
