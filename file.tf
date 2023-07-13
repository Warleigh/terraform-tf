provider "aws" {
 region  = "us-east-1"
 access_key = "AKIA4JLUR2PI56UPVHWG"
 secret_key =  "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"
}

output "console_output" {
value = aws_instance.ec2-instance.public_ip
sensitive = true

}


resource "aws_instance" "ec2-instance" {
   ami = "ami-0865e52b9daea9ee8"
   instance_type = "t2.micro"
   count = var.instance_count

   tags = {
           Name = "Terraform EC2"
   }

}

variable  "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 2
}
