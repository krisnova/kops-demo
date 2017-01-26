#!/bin/bash

export KOPS_NAME="single-master-public.nivenly.com"
export KOPS_STATE_STORE="s3://nivenly-state-store"

kops delete cluster --name $KOPS_NAME --yes

kops create cluster \
  --name $KOPS_NAME \
  --state $KOPS_STATE_STORE \
  --node-count 3 \
  --zones us-west-2a \
  --master-zones us-west-2a \
  --cloud aws \
  --node-size t2.medium \
  --master-size t2.medium \
  -v 10 \
  --kubernetes-version "1.5.2" \
  --yes

. ../kubecfg-magic.sh