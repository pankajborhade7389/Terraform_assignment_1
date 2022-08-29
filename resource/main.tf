resource "aws_instance" "insta_1" {
  ami           = "ami-0ea11756f8d855b6f"
  instance_type = "t2.micro"
  
  tags = {
    Name = "hello guys"
  }
  count = "${var.instance_1 ? 0 : 1}"
}