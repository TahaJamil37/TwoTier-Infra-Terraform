terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket219"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-southeast-2"
     use_lockfile = true  #S3 native locking
    encrypt        = true
  }
}
