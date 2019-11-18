variable "access_key" {
  default = ""
}
variable "secret_key" {
  default = ""
}
provider "aws" {
  profile    = "default"
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "example" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  vpc = true
  instance = aws_instance.example.id
}
