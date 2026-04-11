## frontend

resource "aws_instance" "frontend" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fcfe62979bdd0bf1"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z01214421PKKTLXAI5VN5"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}

## mongodb

resource "aws_instance" "mongodb" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fcfe62979bdd0bf1"]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z01214421PKKTLXAI5VN5"
  name    = "mongodb-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mongodb.private_ip]
}

## catalogue

resource "aws_instance" "catalogue" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fcfe62979bdd0bf1"]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z01214421PKKTLXAI5VN5"
  name    = "catalogue-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.catalogue.private_ip]
}

## redis

resource "aws_instance" "redis" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fcfe62979bdd0bf1"]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z01214421PKKTLXAI5VN5"
  name    = "redis-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.redis.private_ip]
}


## cart

resource "aws_instance" "cart" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fcfe62979bdd0bf1"]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z01214421PKKTLXAI5VN5"
  name    = "cart-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.cart.private_ip]
}


## mysql

resource "aws_instance" "mysql" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fcfe62979bdd0bf1"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z01214421PKKTLXAI5VN5"
  name    = "mysql-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}



## shipping

resource "aws_instance" "shipping" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fcfe62979bdd0bf1"]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z01214421PKKTLXAI5VN5"
  name    = "shipping-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.shipping.private_ip]
}


## rabbitmq

resource "aws_instance" "rabbitmq" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fcfe62979bdd0bf1"]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z01214421PKKTLXAI5VN5"
  name    = "rabbitmq-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.rabbitmq.private_ip]
}

## payment

resource "aws_instance" "payment" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fcfe62979bdd0bf1"]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z01214421PKKTLXAI5VN5"
  name    = "payment-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.payment.private_ip]
}











