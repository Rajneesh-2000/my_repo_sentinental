provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {
  ami           = "ami-06b21ccaeff8cd686"
  instance_type = "t2.micro"
  key_name = "new-key-pair"
  tags = {
    Name = "public_instance"
  }
}