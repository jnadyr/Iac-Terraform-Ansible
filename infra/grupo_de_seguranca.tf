resource "aws_security_group" "acesso_geral" {
    name = "acesso_geral"
    description = "grupo de desenvolvimento"
    ingress{
        cidr_blocks = [ "0.0.0.0/0" ]   #aceita todos os IPs V4
        ipv6_cidr_blocks = [ "::/0" ]   #aceita todos os IPs V6
        from_port = 0                   #aceita todas as portas de origem
        to_port = 0                     #aceita todas as portas de destino na VM
        protocol = "-1"                 #aceita todos os protocolos
    }
    egress{
        cidr_blocks = [ "0.0.0.0/0" ]   #transmite para todos os IPs V4
        ipv6_cidr_blocks = [ "::/0" ]   #transmite para  os IPs V6
        from_port = 0                   #transmite de todas as portas de origem na VM
        to_port = 0                     #transmite para todas as portas de destino
        protocol = "-1"                 #transmite todos os protocolos
    }
    tags = {
        name = "acesso_geral"
    }
}