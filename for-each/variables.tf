variable "instance_names" {
    type    = map
    default ={
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}


variable "common_tags" {
    type   = map
    default = {
    Project = "Expense"
    terraform = true
    Environment = "Dev"
    
    }
}

# r53 variables

variable "zone_id" {
    default = "Z087006736KCEHCWBC7BJ"
}

variable "domain_name" {
    default = "purvanshi.online"
}