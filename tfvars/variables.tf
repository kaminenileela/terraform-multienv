variable "instance_type" {
    type = map
    default = {
        # db-dev = "t3.micro"
        # backend-dev = "t2.micro"
        # frontend-dev = "t2.micro"
    }
}
variable "environment" {

    # default = "dev"
}
variable "port" {

    type = number
    default = 22
}

variable "common_tags" {
    type = map
    default = {  
        
    project = "expense"
    terraform = "true"

    }
}


variable "zone_id" {
    default = "Z050427234MTZELQ6G26Y"

}

variable "domain_name" {
    default = "learningdevopsaws.online"

}




