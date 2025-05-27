terraform {
  backend "s3" {
    bucket = "santhosh-eks-tf"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    # optional: dynamodb_table = "terraform-lock-table"  # if you want locking
  }
}

