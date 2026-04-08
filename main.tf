resource "aws_instance" "web" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.micro"

  tags = {
    Name = "web_server_test"
  }
}
