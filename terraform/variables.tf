variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-0f918f7e67a3323f0" # Ubuntu 22.04 for us-east-1
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "aws-key-pair"
}

variable "public_key_path" {
  default = "~/.ssh/id_ed25519.pub"
}




