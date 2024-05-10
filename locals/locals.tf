locals {
    ami_id = "ami-090252cbe067a9e58" 
    sg_id = "sg-042d3730d8055c14d"
   # instance_type = "t3.micro"
    instance_type = var.instance_name == "db" ? "t3.small"  : "t3.micro"
    tags = {
        Name = "locals"
    }
}