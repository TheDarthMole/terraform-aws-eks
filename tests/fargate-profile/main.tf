module "fargate_profile" {
  source = "../../modules/fargate-profile"

  name         = "separate-fargate-profile"
  cluster_name = var.cluster_name

  subnet_ids = var.subnet_ids
  selectors = [{
    namespace = "kube-system"
  }]

  tags = var.tags
}
