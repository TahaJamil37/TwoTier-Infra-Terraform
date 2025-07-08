provider "aws" {
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "useast1"
  region = "us-east-1"
}
