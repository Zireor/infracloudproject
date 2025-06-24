**Étapes pour réaliser le projet infracloudproject**

**1. Pré-requis**

- Installer **Terraform** .

- Installer la CLI AWS.

- Prendre connaissance des services Grafana et Prometheus .

- Installer Ansible.

- Installer git

**2. Cloner le dépôt**

git clone [https://github.com/Zireor/infracloudproject.git  
](https://github.com/Zireor/infracloudproject.git)cd infracloudproject

**3. Configurer les fichiers de variables**

- Créer un fichier terraform.tfvars pour définir vos variables
  spécifiques (comme les clés d\'accès, les régions, etc.).

- Exemple de contenu :

access_key = \"YOUR_ACCESS_KEY\"  
secret_key = \"YOUR_SECRET_KEY\"  
region = \"us-west-2\"

**4. Examiner la structure du projet**

- Vérifiez la structure des dossiers pour vous familiariser avec les
  différents services :

  - grafana/

  - prometheus/

  - webserver/

**5. Configurer les services**

- **Grafana** : Modifier le fichier de configuration pour définir les
  dashboards et les sources de données.

- **Prometheus** : Configurer les endpoints à surveiller et les règles
  d\'alerte (installer les agents de prometheus nécessaire).

- **Serveur Web** : Définir les paramètres de votre serveur web
  (Apache).

**6. Initialiser Terraform**

- Exécuter la commande suivante pour initialiser le projet Terraform :

terraform init

**7. Planifier le déploiement**

- Utiliser la commande suivante pour voir les ressources qui seront
  créées :

terraform plan

**8. Déployer l\'infrastructure**

- Exécuter la commande suivante pour appliquer les changements et
  déployer l\'infrastructure :

terraform apply

- Confirmer l\'opération lorsque Terraform le demande.

**9. Vérifier les déploiements**

- Accéder aux interfaces de Grafana et Prometheus via leurs adresses IP
  ou DNS fournies par Terraform.

- Vérifier que les services fonctionnent comme prévu.

**10. Tester les services**

- Tester chaque service individuellement pour s\'assurer qu\'ils
  répondent correctement aux requêtes.

**11. Surveiller et maintenir**

- Utiliser Grafana pour visualiser les métriques et Prometheus pour
  surveiller la santé de l\'infrastructure.

- Mettre à jour les configurations et redéployer si nécessaire.
