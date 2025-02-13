# Medium_complexity_project--part_03-AIC-


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


