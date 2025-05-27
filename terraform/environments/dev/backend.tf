terraform {
  backend "s3" {
    bucket = "santhosh-eks-tf"
    key    = "terraform/state/dev/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

