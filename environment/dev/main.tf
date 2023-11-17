module "aws-dev" {
  source = "../../infra"      #local de onde o módulo puxa as informações das variáveis (pasta infra)
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  chave = "IaC-DEV"
  }
output "IP_publico_da_VM_de_Dev" {  
  #o nome aqui não pode ser igual ao do main.tf da infra!
  value = module.aws-dev.IP_publico_da_maquina
  #de novo temos o caminho da máquina: module . aws-dev . IP_publico_da_maquina 
  #module: é este módulo deste main.tf de desenvolvimento
  #aws-dev - está neste main.tf  de desenvolvimento
  #IP_publico_da_maquina : está no main.tf da pasta de infra
  }