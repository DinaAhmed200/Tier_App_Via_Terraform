# Tier_App_Via_Terraform

Provision a VPC with IGW and route tables.
Provision Two subnets (public and private) inside the VPC.
Provision an EC2 Instance (App) inside the public subnet.
Provision an EC2 Instance (DB) inside the private subnet.
Store the state file on S3 bucket and lock it by dynamo db.
