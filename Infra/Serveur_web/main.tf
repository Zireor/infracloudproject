terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.1.0"
}

locals {
  ssh_user = "admin"
  key_name = "key-name"
  private_key_path ="path"
}

# Crée un groupe de sécurité pour autoriser le trafic SSH et HTTP
resource "aws_security_group" "instance" {
  name_prefix = "terraform-sg-web"
  vpc_id      = "vpc-" # Remplacez par l'ID de votre VPC

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # À sécuriser en production avec vos IPs spécifiques
    description = "Autorise le trafic SSH"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # À sécuriser en production
    description = "Autorise le trafic HTTP"
  }

  ingress {
    from_port   = 9100
    to_port     = 9100
    protocol    = "tcp"
    cidr_blocks = ["172.31.0.0/16"]
    description = "Autoriser Node Exporter depuis Prometheus"
  }

  ingress {
    from_port   = 9117
    to_port     = 9117
    protocol    = "tcp"
    cidr_blocks = ["172.31.0.0/16"]
    description = "Autoriser Apache Exporter depuis Prometheus"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-web"
  }
}

# Crée l'instance EC2
resource "aws_instance" "server" {
  ami           = "ami-0644165ab979df02d"
  instance_type = "t2.micro" # Type d'instance (peut être modifié)
  subnet_id     = "subnet-" # Remplacez par l'ID de votre subnet
  vpc_security_group_ids = [aws_security_group.instance.id]
  key_name = local.key_name 

  tags = {
    Name = "terraform-web"
  }

  provisioner "remote-exec" {
    inline = [ "echo 'Attendre que SSH soit possible'" ]

    connection {
      type        = "ssh"
      user        = local.ssh_user
      private_key = file(local.private_key_path)
      host        = self.public_ip
    }
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i '${self.public_ip},' --private-key '${local.private_key_path}' ${path.module}/inst_pack.yml"
  }
}
