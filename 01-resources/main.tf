resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"

  tags = {
    Name = "TeraformTest"
  }
}

resource "aws_route53_record" "www" {
  zone_id = "Z03521483OD8G6IJR191"
  name    = "test.techadda.co"
  type    = "A"
  ttl     = 300
  records = [aws_instance.web.private_ip]
}