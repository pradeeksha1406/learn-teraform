data "aws_ami" "ami"{
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

data "aws_security_group" "sg" {
  name = "Allow all"
}

data "aws_route53_zone" "zone" {
  name         = var.zone_id

}

variable "zone_id" {
  default = "techadda.co"
}

locals {
  ami = data.aws_ami.ami.image_id
  zone_id = data.aws_route53_zone.zone.id
}