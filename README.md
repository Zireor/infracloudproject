# infracloudproject

## Description
Infracloud Project est une solution d'infrastructure cloud déployée sur AWS. Ce projet permet de mettre en place une stack comprenant Prometheus, Grafana et un serveur web, facilitant ainsi la surveillance et la visualisation des données.

## Technologies Utilisées
AWS : Utilisation de services comme VPC et EC2 pour le déploiement.
Terraform : Outil d'infrastructure as code pour automatiser le déploiement.
Ansible : Outil d'automatiser l'installation systèmes

## Structure du Projet
Le projet est organisé en deux branches :
main : Branche principale avec la configuration de base, elle permet de test par dossier de service uniquement
module_final : Branche contenant les fonctionnalités finales et optimisées.

Dossier infra :
- 1 fichier princiaple main.tf (Utilisable que dans la branch module_final)
- 3 dossier de services (Grafana, prometheus, serveur web)

## Prérequis
Avant de commencer, assurez-vous d'avoir :
- Un compte AWS actif et installer AWS CLI
- Terraform installé sur votre machine.
- Ansible installé sur votre machine
- Avoir une IAM pour la Discovery EC2

## Modification à faire
Les fichiers main.tf de chaque dossier sont à modifier pour :
- VPC
- Subnet
- AMI
- clé ssh
- nom clé

Fichier auto_dsc dans le dossier ressources
- access_key
- secret_key

## À faire 
Si vous prenez la branch main
<pre>
cd /infra/Grafana
terraform init
terraform plan
terraform apply

cd /infra/Prometheus
terraform init
terraform plan
terraform apply

cd /infra/Serveur_web
terraform init
terraform plan
terraform apply
</pre>

Si vous prenez la branch module_final
<pre>
cd /infra
terraform init
terraform plan
terraform apply
</pre>
