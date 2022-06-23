## Call the Terraform Plan functions stored in functions folder
module "tfplan-functions" {
  source = "./functions/tfplan-functions.sentinel"
}

## Call the AWS functions stored in functions folder
module "aws-functions" {
  source = "./functions/aws-functions.sentinel"
}

policy "restrict-ec2-instance-type" {
  source = "./aws/restrict-ec2-instance-type.sentinel"
  enforcement_level = "advisory"
}