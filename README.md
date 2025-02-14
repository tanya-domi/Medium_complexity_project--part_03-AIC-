

# Infrastructure Deployment using IAC and CI/CD Pipeline Implementation.

The objective of this project is to build a scalable and secure infrastructure on AWS using Infrastructure as
Code practices and to establish a DevOps pipeline for building the application and deployment to the infrastructure.

# Part 1
# Software's required on AMI

• CloudWatch Agent

• AWS SSM Agent

• Docker

# Creation of a Base AMI using Packer

• You are free to use AWS or Azure for this entire
project

• Packer is a differentiating skill. Easy to get started
and custom base AMIs are used across the industry
and in every company.

• Use ansible provisioner or shell script as
provisioner.

• Please remember all three Parts of the project are for
a purpose and if Part 2 or 3 require any additional
component then this pipeline will help in that.

• The output of part 1 golden AMI image will be use
in the 2 part and  3 part of the application deployment processes.

• Build a Packer based pipeline in your
choice of CI tool by taking an AWS/Azure provided
base image and install your required software using
Shell Script or Ansible provisioner.

![Image](https://github.com/user-attachments/assets/7f2ec715-6934-46a9-ad18-0c62d8188ba5)

# part 2

# Key requirements for Application Build

1. Use any CI tool
3. Make sure the code is scanned using Sonar Cloud (Create a free account on https://sonarcloud.io)
5. The code needs to be scanned and built on every branch code commit.
6. Build the project using Maven and produce the war/jar files as outcome.
7. Containerize docker image as final output.
8. Create a free account on JFROG Artifactory because this will be used to store JAR/Docker Image.
9. Differentiate and Tag between final output produced by a feature branch or main branch

![Image](https://github.com/user-attachments/assets/31504fd2-0b0b-43ca-8f8a-7928ea653013)


# Part 3
 
# Infrastructure provisioning using Terraform

• Best practices are a MUST.
• State must be in Cloud using S3 or Azure Blob Storage.
• For State file security enable S3 cross region replication,
versioning and encryption
• Apply state locking using DynamoDB
• The CICD Pipeline to have three steps and checks:
• On commit to any Branch perform terraform init, validate,
fmt and plan operations, checkov scan is optional
• On pull request creation — perform terraform init, validate
fmt and plan so that reviewer can see what is the change this
pipeline will perform
• On merge the feature is merged to main and
terraform apply happens using GitOps approach

![Image](https://github.com/user-attachments/assets/fc1369a8-b55c-4b4f-8d9a-fbc771caf608)


# Key requirements for Infrastructure

# 1. 3 Subnets Architecture
Public, Private and Secure Subnets.
Public Subnets should have routes to Internet Gateway. 
Private Subnets should have route to NAT
Gateway. 
Secure subnets should not have route to IGW or NAT GW.

# 2. Load balancer in Public Subnet
Create Load Balancer in Public Subnet across 2 AZs. 
Create corresponding Listener and Target Groups.

# 3. Create Auto Scaling Group
Create the ASG across 2 AZs in private subnet. Attach the ASG to ALB. Desired=1, Min=1, Max=1
The instances should not have public IPs.
Instances should be connecting using SSM or EC2 Instance Connect Endpoint.
Security group should not open port 22.
EC2 should be using a user data script at startup and install the application [Docker Image or
WAR JAR File]. This should be in sync with the ALB Target groups.

# 4. Create a RDS cluster.
Create the RDS cluster secure subnet in 2 AZs but can start with 1 AZ to cut cost.

# 5. Logs [Stretch Goal]
Application and or docker Logs to be collected in Cloud Watch Logs.

# 6. Document RTO and RPO for this application

