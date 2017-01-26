#!/bin/bash

# List of commonly used aliases I use. This is lifted directly from my ~/.bash_profile

#export KOPS_NAME="example.nivenly.com"
#export KOPS_STATE_STORE="s3://nivenly-state-store"

# Friendlies for kops dev
alias kopscc="kops create cluster --zones sa-east-1a -v 10 ${KOPS_NAME}"
alias kopsccy="kops create cluster --zones sa-east-1a --yes -v 10 ${KOPS_NAME}"
alias kopsccpnb="kops create cluster --zones us-east-2a --topology private --bastion --networking weave $KOPS_NAME"
alias kopsccpnby="kops create cluster --zones us-east-2a --topology private --bastion --networking weave $KOPS_NAME --yes"
alias kopsccpny="kops create cluster --zones sa-east-1a --yes -v 10 --networking weave --topology private ${KOPS_NAME}"
alias kopsdc="kops delete cluster --yes ${KOPS_NAME} -v 10"
alias kopsec="kops edit cluster ${KOPS_NAME}"
alias kopsuc="kops upgrade cluster --yes ${KOPS_NAME} -v 10"

alias kopsmake="cd /go/src/k8s.io/kops && make"