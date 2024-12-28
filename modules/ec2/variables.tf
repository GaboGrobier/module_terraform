variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "instance_name" {
    type = string
    default = "ec2-instance-curso-devops"
  
}
variable "key_name" {
    type = string
    default = ""
  
}

variable "ami" {
    type = string
    default = "ami-0ca9fb66e076a6e32"
  
}

variable "main_subnet_id" {
    type = string

  
}

variable "sg_id" {
    type = string
  
}