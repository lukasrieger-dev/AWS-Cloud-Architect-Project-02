provider "aws" {
    access_key = "xyz"
    secret_key = "123"
    region = "eu-central-1"
}

resource "aws_instance" "udacityt2" {
    count = 4
    ami = "ami-0a6dc7529cd559185"
    subnet_id = "subnet-035930fdf9ff8ef40"
    instance_type = "t2.micro"
    tags = {
        Name = "Udacity T2"
    }
}

#resource "aws_instance" "udacitym4" {
#    count = 2
#    ami = "ami-0a6dc7529cd559185"
#    subnet_id = "subnet-035930fdf9ff8ef40"
#    instance_type = "m4.large"
#    tags = {
#        Name = "Udacity M4"
#    }
#}