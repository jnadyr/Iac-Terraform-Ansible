#declaração das variaveis a serem utilizadas pelo terraform nos ambientes distintos de dev e prod
variable "regiao_aws" {
  type = string
    }
variable "chave" {
  type = string  
}
variable "instancia" {
  type = string  
}