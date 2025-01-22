packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  region                      = "us-east-2"
  ami_name                    = "ami-build-with-packer-{{timestamp}}"
  instance_type               = "t2.micro"
  source_ami                  = "ami-0430580de6244e02e"
  ssh_username                = "ubuntu"
  associate_public_ip_address = true
  subnet_id                   = "subnet-0c73b32bab4dd304b"
  security_group_id           = "sg-095cfde1b765e31f4"
  ssh_private_key_file = "~/.ssh/id_rsa.pub.pem" 
  ami_regions = [
    "us-east-1"
  ]
}


build {
  name = "my-first-build"
  sources = ["source.amazon-ebs.ubuntu"]
  
  provisioner "ansible" {
    playbook_file = "ubuntu-playbook.yml"
  }
}


