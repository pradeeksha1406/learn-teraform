resource "aws_instance" "frontend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08800487856ccc0f1"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z03521483OD8G6IJR191"
  name    = "frontend.techadda.co"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08800487856ccc0f1"]

  tags = {
    Name = "backend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z03521483OD8G6IJR191"
  name    = "frontend.techadda.co"
  type    = "A"
  ttl     = 300
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08800487856ccc0f1"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z03521483OD8G6IJR191"
  name    = "mysql.techadda.co"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}