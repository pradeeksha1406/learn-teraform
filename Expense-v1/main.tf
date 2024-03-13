resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_security_group.sg.id]

  tags = {
    Name = "frontend"
  }
}



resource "aws_route53_record" "frontend" {
  zone_id = data.aws_route53_zone.zone.id
  name    = "frontend.techadda.co"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_security_group.sg.id]

  tags = {
    Name = "backend"
  }
}

resource "aws_route53_record" "backend" {
  zone_id = data.aws_route53_zone.zone.id
  name    = "backend.techadda.co"
  type    = "A"
  ttl     = 300
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_security_group.sg.id]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = data.aws_route53_zone.zone.id
  name    = "mysql.techadda.co"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}