#Todo esse módulo está disponível no site de documentação do Terraform
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.17.0"

  name = var.aws_vpc_name
  cidr = var.aws_vpc_cidr

  azs             = var.aws_vpc_azs
  private_subnets = var.aws_vpc_private_subnets
  public_subnets  = var.aws_vpc_public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = var.aws_project_tags
}

#Esse módulo é o resp. por criar o cluster
module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.31.6"
  cluster_name    = var.aws_eks_name
  cluster_version = var.aws_eks_version

  #habilitar permissões de adm no cluster
  enable_cluster_creator_admin_permissions = true

  #subnets do cluster, referencio a q foi criada no módulo vpc
  subnet_ids = module.vpc.private_subnets

  #vpc do cluster, referencio a vpc criada no módulo de vpc
  vpc_id = module.vpc.vpc_id

  #cluster tera acesso publico ou não
  cluster_endpoint_public_access = true

  #quais sao as maquinas que vão formar o cluster(ao menos 2)
  eks_managed_node_groups = {
    default = {
      min_size     = 2
      max_size     = 2
      desired_size = 2

      #tipos de perfis de maquinas
      instance_types = var.aws_eks_managed_node_groups_instance_types
    }
  }

}

