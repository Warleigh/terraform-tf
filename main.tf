provider "aws" {
 region = "us-west-1"
 access_id = "------------"
secret_key = "------------"
}

resources "ews-instance" "my_instance" {
 ami = "-----------------"
 instance_type = "t2.micro"
 count = 1
 tags = {
 Name = "Terraform EC2"
 } 

}

resource "aws_iam_user" {
 count = length(var.user_names)
 name  = var.user_names[count.index]


   variable "user_name" {
description = "create iam users"
  type      = list(string)
  default   = ["user1", "user2", "user3"] 


