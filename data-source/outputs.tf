output "ami_id" {
    value = data.aws_ami.aws_ami.id
}

output "vpc_info" {
    value = data.aws_vpc.default
}