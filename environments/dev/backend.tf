terraform {
  backend "s3" {
    bucket = "togglemaster-terraform-state-106978078844"
    key    = "togglemaster/dev/terraform.tfstate"
    region = "us-east-1"
  }
}