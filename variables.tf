variable "region" {
  description = "Qual regiao a ec2 vai ser iniciada"
  default     = "us-west-2"
}

variable "name" {
  description = "nome da app"
  default     = "server 01"
}

variable "env" {
  description = "environment of the app"
  default     = "stg"
}

#variable "ami" {
#  description = "ami id of the OS"
#  default     = "ami-093467ec28ae4fe03"
#}

variable "instance_type" {
  description = "define HW machine"
  default     = "t2.micro"
}

variable "repo" {
  description = "repo of the app"
  default     = "https://github.com/NSantos6/terraform-aws"
}