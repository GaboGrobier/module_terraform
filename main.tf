provider "aws" {
    region = "us-east-1"
    profile = "default"
  
}

module "ec2" {
    source = "./modules/ec2"
    main_subnet_id = module.subnet.main_subnet_id
    sg_id = module.sg.sg_principal_id
  
}

module "vpc" {
    source = "./modules/vpc"
    
}

module "subnet" {
    source = "./modules/subnet"
    vpc_id = module.vpc.main_vpc
  
}

module "table_route" {
    source = "./modules/table_route"
    subnet_id = module.subnet.main_subnet_id
    vpc_id = module.vpc.main_vpc
    gateway_id = module.gw.gw_curso_devops
  
}

module "sg" {
    source = "./modules/sg"
    vpc_id = module.vpc.main_vpc
  
}

module "gw" {
    source = "./modules/gw_clase2"
    vpc_id = module.vpc.main_vpc
  
}

module "s3" {
  source = "./modules/s3"
}