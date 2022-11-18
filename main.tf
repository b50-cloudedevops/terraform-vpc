module "vpc" {
    source = "git::https://github.com/b50-cloudedevops/tf-module-vpc.git?ref=main"
}

# Always the source attribute in terraform module cannot be parameterized
# if it cannot be handled or parameterized the source, how are we going to tell, fetch from x branch 
# and when branches are dynamic