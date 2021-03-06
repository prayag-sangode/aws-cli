# Push the commit with the empty Git directory to remote repositories such as GitHub or GitLab
~$ mkdir empty-directory

~$ cd empty-directory

~$ touch .gitkeep

~$ git add .

~$ git commit -m "Commit empty folder in Git with gitkeep"

~$ git push origin

# Install AWS CLI on Linux

~$ curl https://raw.githubusercontent.com/prayag-sangode/aws-cli/main/install/aws-cli-install.sh | sudo bash

# Create s3 bucket

~$ aws s3 ls

aws s3api create-bucket --bucket images-19159 --region us-east-1

# Enable versioning for s3 bucket

aws s3api put-bucket-versioning --bucket images-19159 --versioning-configuration Status=Enabled

# Create folder in s3 bucket

aws s3api put-object --bucket images-19159 --key VM-Import/

aws s3 ls s3://images-19159/VM-Import/

# Add file in s3 bucket

aws s3 cp sample-file.txt s3://images-19159/VM-Import/

# Remove / Delete s3 bucket

aws s3 rb s3://images-19159

aws s3 rb --force s3://tf-ts-s3-19159

aws s3 rb s3://bucket-name --force  
