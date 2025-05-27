module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "eks" {
  source = "../../modules/eks"

  cluster_name              = var.cluster_name
  cluster_security_group_id = module.vpc.eks_sg_id
  private_subnet_ids        = module.vpc.private_subnet_ids
  instance_type             = var.instance_type
  desired_size              = var.desired_size
  min_size                  = var.min_size
  max_size                  = var.max_size
}
