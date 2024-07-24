resource "aws_instance" "LinuxServerEC2" {
     
        ami ="ami-02eb7a4783e7e9317"
        instance_type = "t2.micro"
        key_name = "sai123"
        
       associate_public_ip_address = true
        subnet_id = "subnet-0d0381cc020009373"
 
        vpc_security_group_ids = ["sg-02ea0aa529d2cb948"]
 
    tags = {
        Name = "Module Testing"
         }
}

resource "aws_instance" "LinuxServerEC2_2" {
     
        ami ="ami-02eb7a4783e7e9317"
        instance_type = "t2.micro"
        key_name = "sai123"
        
       associate_public_ip_address = true
        subnet_id = "subnet-0d0381cc020009373"
 
        vpc_security_group_ids = ["sg-02ea0aa529d2cb948"]
 
    tags = {
        Name = "My instance"
         }
}
//to provide the region we use providers block
         provider "aws" {
           region ="ap-south-1"
         }