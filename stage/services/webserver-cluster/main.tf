provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "jms-terraform-shared-state"
    key     = "stage/services/webserver-cluster/terraform.tfstate"
    region  = "us-east-1"
    encrypt = "true"
  }
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
}
