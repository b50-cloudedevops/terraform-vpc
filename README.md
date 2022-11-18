# tf-module-vpc

This repo contain all the modules of the VPC and will be called from various sources

# terrafile use case:

why are we using 'terrafile' ?
---
since the parameter cannot be parameterized, terrafile is going to download the code from the remote repo with the branch of your choice and keeps the code local and makes the repo local during execution. This way we have the luxury to take the modules from branch of your choice.
---

# How to download and install terrafile

$ sudo wget  https://github.com/coretech/terrafile/releases/download/v0.6/terrafile_0.6_Linux_x86_64.tar.gz

$ tar -xf terrafile_0.6_Linux_x86_64.tar.gz

$ sudo mv terrafile /usr/local/bin 

$ $ terrafile
Terrafile: version 0.6, commit a98a37b4733ff522132baf2f4963beeab2cd69ad, built at 2019-09-25T14:16:25Z 

PS : You should be able to see the version