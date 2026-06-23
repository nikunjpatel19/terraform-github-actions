provider "aws" {
region = "ca-central-1"
}

resource "aws_s3_bucket" "bucket01" {
bucket = "githubactions-bucket-002"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0d19d7a9bc91b3550" 
  instance_type = "t3.micro"             

  tags = {
    Name = "Github Actions EC2"
  }
}
