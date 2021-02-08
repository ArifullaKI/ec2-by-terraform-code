
provider "aws" {
    region = "ap-south-1"
    shared_credentials_file = "~/.aws/credentials"
    profile = "default"
}

resource "aws_instance" "ubuntu" {
    ami  = "ami-0a4a70bd98c6d6441"
    instance_type = "t2.micro"
    count = 2
}

