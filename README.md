# infracloudproject

Structure du projet 

Dossier infra :
- 1 fichier princiaple qui lance les modules qui sont nos services grace main.tf
- 3 dossier (Grafana, prometheus, serveur web)

Dans les dossier on n'inclut que les fichiers de code donc .tf et les .yml

Dans chaque dossier il doit avoir au minimun un main.tf et un fichier configuration yml (voir grafana)

Cela nous permet de déployer toute l'infra d'un coup mais on peut tester juste notre machine s'il le faut

aucune info confidentiel doit être dans le github.

Un dossier ressources pour les copy de fichier de configuration en cas où.

Git commit à chaque ajout pour comprendre les modification de configuration

À faire : 
- Prometheus
- Grafonnet
- Serveur web