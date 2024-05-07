#resource <resoyrce-type> <resource-name>
resource "aws_instance" "test" {
    ami           = "ami-090252cbe067a9e58"  
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"

    tags = {
        Name = "test"
  }
}

#resource <resoyrce-type> <resource-name>
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "Allow ssh inbound traffic and all outbound traffic"

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
  }

    egress {
        from_port        = 0 # from 0 to 0 means,opening all protocalls
        to_port          = 0
        protocol         = "-1" #-1 all protocalls
        cidr_blocks      = ["0.0.0.0/0"]
        
  }

    tags = {
        Name      = "allow_ssh"
        createdby = "Sabitha"
  }

}
