module "aws-prod" {
  source = "../../infra"       #local de onde o módulo puxa as informações das variáveis (pasta infra)
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  chave = "IaC-PROD"
  }
output "IP_publico_da_VM_de_Prod" {  
  #o nome aqui não pode ser igual ao do main.tf da infra!
  value = module.aws-prod.IP_publico_da_maquina
  #de novo temos o caminho da máquina module . aws-prod . IP_publico_da_maquina
  #module: é este módulo deste main.tf de produção
  #aws-oro - está neste main.tf de produção
  #IP_publico_da_maquina : está no main.tf da pasta de infra
  }