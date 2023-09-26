# main.tf

module "aws_infra" {
  source = "./modules/aws"
}

module "gcp_infra" {
  source = "./modules/gcp"
}

module "azure_infra" {
  source = "./modules/azure"
}