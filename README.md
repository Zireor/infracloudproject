# infracloudproject

## Fonctionnement du projet 

Le projet ne fonctionne que sur AWS

Dossier infra :
- 1 fichier princiaple main.tf
- 3 dossier de services (Grafana, prometheus, serveur web)

La stack fonctionne sur du Debian. Elle permet de lancer 3 serveur Prometheus ,Grafana , Web

## Modification à faire
Les fichiers main.tf de chaque dossier sont à modifier pour :
- VPC
- Subnet
- AMI
- clé ssh
- nom clé

Fichier auto_dsc
- access_key
-secret_key

## À faire 
<pre>
cd /infra
terraform init
terraform plan
terraform apply
</pre>
