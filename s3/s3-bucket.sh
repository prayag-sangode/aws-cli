#!/bin/bash
# Author : Prayag Sangode
#
aws s3 ls

aws s3api create-bucket --bucket images-19159 --region us-east-1

aws s3 ls

aws s3api put-object --bucket images-19159 --key VM-Import/

aws s3 ls s3://images-19159/VM-Import/

aws s3 cp lamp-stack.ova s3://images-19159/VM-Import/
