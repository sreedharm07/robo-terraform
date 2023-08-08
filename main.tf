terraform {
  backend "s3" {
    bucket = "statefile7"
    key    = "robo-shop-terraform/terraform.tfstate"
    region = "us-east-1"
  }
}
