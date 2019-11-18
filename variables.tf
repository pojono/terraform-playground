variable "region" {
  default = "eu-west-3"
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-b374d5a5"
    "us-west-2" = "ami-4b32be2b"
    "eu-west-3" = "ami-087855b6c8b59a9e4"
  }
}
