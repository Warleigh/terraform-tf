  provisioner "file" {
     region     = "us-east-1"
     access_key = "AKIA4JLUR2PI56UPVHWG"
     secret_key = "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"

}

  resource "aws_instance" "ec2-instance" {

      ami = "ami-0865e52b9daea9ee8"
      instance_type = "t2.micro"
      key_name = "aws_key"
      vpc-security_group-ids = [aws_security_group.main.id]

   provisioner "file" {
      source   = "/home/ec2-user/file/main"
   destination = "/home/ec2-user/aws
}

connection {
   type         = "ssh"
   host         = self.public_ip
   user         = "ec2-user"
   private_key  = file("--------------")
   timeout      = "4m"
  }
}
 
   resource "aws_security_group" "main" {
    egress = [
{
      cidr_blocks   = [ "0.0.0.0/0", ]
      description   = ""
      from_port     = 0
    ipv6_cidr_block = [] 
  prefix_list_ids   = []
    protocol        = "-1"
    security_groups = []
       self         = false
      to_port       = 0

}

]
ingress                = [
  { 
     cidr_blocks    = [ "0.0.0.0/0", ]
     description    = ""
     from_port      = 22
  ipv6_cidr_blocks  = []
  prefix_list_ids   = []
      protocol      = "top"
    security_groups = []
      self          = false
       to_port      = 22

}

]

}

# You can use dynamic blocks
# dynamic "ingress" {
for each = aws_ingress_rules

content {
      description = ingress.value.description
from_port = ingress.value.port
to_port = ingress.value.port
protocol  = "tcp"
cidr_block= ["0.0.0.0/0"]


resource "aws_key_pair" "deployer" {
     key_name   = "key"
 
  public_key   = "ssh -rsa ********************"
# You can Use ssh-keygen to generate pub key an copy the key into the public_key section"

}

# To create a local provisioner 
# provisioner "local-exec" {
# command = "touch hello-world.txt"
