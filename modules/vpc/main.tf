provider "aws" {
  region = "ap-south-1"
}

provider "random" {}

module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  name               = "vpc-${random_pet.myPet.id}"
  cidr               = "172.32.0.0/16"
  azs                = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
