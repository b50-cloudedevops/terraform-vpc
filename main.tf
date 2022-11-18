module "vpc" {
    source = "./vendor/modules/vpc"
    VPC_CIDR = var.VPC_CIDR
}

# Always the source attribute in terraform module cannot be parameterized
# if it cannot be handled or parameterized the source, how are we going to tell, fetch from x branch 
# and when branches are dynamic