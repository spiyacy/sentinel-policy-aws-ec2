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

policy "deny-public-ssh-acl-rules" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/aws-networking-terraform/1.0.2/policy/deny-public-ssh-acl-rules.sentinel?checksum=sha256:b56a7869c9ddd2bece7de8d251de106e072407207247e6f94e001b6eba22c71b"
  enforcement_level = "advisory"
}

policy "deny-public-rdp-acl-rules" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/aws-networking-terraform/1.0.2/policy/deny-public-rdp-acl-rules.sentinel?checksum=sha256:b301e80bd612809aeeac263b5d4b5b22b9f84190da67216cc298a96652301086"
  enforcement_level = "advisory"
}