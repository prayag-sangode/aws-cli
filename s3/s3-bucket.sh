#!/bin/bash
# Author : Prayag Sangode
#
aws s3 ls

aws s3api create-bucket --bucket images-19159 --region us-east-1

aws s3api put-bucket-versioning --bucket images-19159 --versioning-configuration Status=Enabled

aws s3 ls

aws s3api put-object --bucket images-19159 --key VM-Import/

aws s3 ls s3://images-19159/VM-Import/

aws s3 cp sample-file.txt s3://images-19159/VM-Import/

aws s3 rb s3://images-19159

aws s3 rb --force s3://tf-ts-s3-19159
