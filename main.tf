resource "aws_instance" "web" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.micro"

  tags = {
    Name = "web_server_test"
  }
}

resource "aws_route53_record" "www" {
  zone_id = Z01214421PKKTLXAI5VN5
  name    = "test"
  type    = "A"
  ttl     = 300
  records = [aws_instance.web.private_ip]
}