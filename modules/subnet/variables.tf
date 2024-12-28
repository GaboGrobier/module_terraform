variable "subnet_cidr_block" {
    type = string
    default = "192.168.1.0/24"
  
}
variable "subnet_availability_zone" {
    type = string
    default = "us-east-1a"
}
variable "vpc_id" {
    type = string
  
}