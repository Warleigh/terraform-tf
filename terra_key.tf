  provider "aws" {
  region       = "us-east-1"
  access_key   = "AKIA4JLUR2PI56UPVHWG"
  secret_key   = "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"

}

  resource "aws_instance" "ec2_instance" {

  ami = "ami-0865e52b9daea9ee8"
  instance_type = "t2.micro"
  key_name = "key.tf.pub"
  vpc_security_group_ids = [aws_security_group.main.id]

}

resource "aws_security_group" "main" {

ingress {

 cidr_blocks          = ["0.0.0.0/0"]
 description          = ""
 from_port            = 22
 protocol             = "tcp"
 to_port              = 22

   }
 }



resource "aws_key_pair" "deployer" {
key_name = "key.tf.pub"
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCs/S5lWQwknCpGZ5l08jdHn5w5NMbOSO05rlZayc5/coFn3/gzrX217MGvNgjqsHq5bbD4lHQe/gEwD7p2mFWoGMWyA08N41psW6DiO3J/rvHpO5Nt8036fbPKicm6h6jKH4C2qrlL4epmU2N50xGqgN/tIV7KKzE0R3y7eROkUIm3nQCnL8yvaiUxJ8T/G0l2BlUxSE7jyW8AFybAOkKeziR+X51LtcCVX1QczcTieJ4RuBcdBYmGgcgW0pjMyNA4P8Dy+U/cuOpVKFWWOefCgBR3W7JMFEqV+U2nQr7Xg1LhHj/wZiRivfpijmrePNiD2Th1OD8Z82Dz+Hj0oTmx root@controller"
}
