variable "access_key" {}

variable "secret_key" {}

variable "aws_region" {
  default = "us-east-1"
}

variable "ami_ids" {
  default= {
    us-east-1 = "ami-c8bda8a2"
  }
}

variable "instance_type" {
  default = "t2.nano"
}
