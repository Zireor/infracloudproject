# infracloudproject

## Fonctionnement du projet 

Le projet ne fonctionne que sur AWS.
Il y a deux branch, celui de main et module_final

Dossier infra :
- 1 fichier princiaple main.tf (Utilisable que dans la branch module_final)
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
