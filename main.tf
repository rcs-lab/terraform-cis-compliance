
provider "aws" {
  region = var.region
}

module "iam_password_policy" {
  source = "./modules/iam_password_policy"
}

module "cloudtrail" {
  source = "./modules/cloudtrail"
}

module "s3_encryption" {
  source = "./modules/s3_encryption"
}
