terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
#buscando o valor da regiao aws
  region  = var.regiao_aws
}
 resource "aws_instance" "app_server" {
  ami           = "ami-053b0d53c279acc90"
#buscando o valor da instancia
  instance_type = var.instancia
#buscando o valor da chave
  key_name = var.chave
#vinculando a instância ao security group criado em grupo de segurança
  vpc_security_group_ids = [aws_security_group.acesso_geral.id]

  tags = {
    Name = "Terraform Ansible Phyton"
  }
 }
#criando o recurso da chave publica no arquivo main.tf do terraform gerada pelo ssh-keygen.
 resource "aws_key_pair" "chave" {
  key_name = var.chave
  public_key = file("${var.chave}.pub")
 }
#passamos a chave atraves do file para não expor a chave publica na internet!
#aqui é a chave publica que temos que passar!

 output "IP_publico_da_maquina" {
  value = aws_instance.app_server.public_ip 
#aqui segue-se o caminho da maquina!
#caminho da maquina: aws_instance . app_server . public_ip
 }

