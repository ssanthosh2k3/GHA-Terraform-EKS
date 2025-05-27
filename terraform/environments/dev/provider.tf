provider "aws" {
  region  = "ap-south-1"
  profile = "poc"

  default_tags {
    tags = {
      environment = "santhosh-strak"
    }
  }

}

