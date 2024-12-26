aws_region= "us-east-1"
aws_vpc_name= "minha-vpc"
aws_vpc_cidr= "10.0.0.0/16" 
aws_vpc_azs= ["us-est-1a", "us-est-1b", "us-est-1c"]
aws_vpc_private_subnets= ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
aws_vpc_public_subnets= ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
aws_eks_name= "criando-infra-eks"
aws_eks_version= "4.33.0"
aws_eks_managed_node_groups_instance_types= ["t3.nano"]
aws_project_tags= {
    terraform   = true //aqui diz q estou usando Terraform pra criar os recursos
    Environment = "producao"
    Project     = "criando-ifra"
}