#!/bin/bash

git clone https://github.com/awslabs/git-secrets.git

#ls -l

export PATH="/git-secrets:$PATH"
#echo $PATH

git secrets --register-aws --global
git secrets --install ~/.git-templates/git-secrets
git config --global init.templateDir ~/.git-templates/git-secrets

git secrets --scan-history