data "aws_ami" "alinux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023*"] #imagem amazon linux
  }

  owners = ["137112412989"] #owner id amazon
}



resource "aws_instance" "server" {
  ami           = data.aws_ami.alinux.id
  instance_type = var.instance_type

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terraform"
    Repo        = var.repo
  }
}