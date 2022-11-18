# tf-module-vpc

This repo contain all the modules of the VPC and will be called from various sources

# terrafile use case:

why are we using 'terrafile' ?
---
since the parameter cannot be parameterized, terrafile is going to download the code from the remote repo with the branch of your choice and keeps the code local and makes the repo local during execution. This way we have the luxury to take the modules from branch of your choice.
---