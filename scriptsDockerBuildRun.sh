#!/bin/bash

# Supprimer le conteneur existant, s'il existe
echo "Suppression du conteneur existant..."
docker rm -f mspr_kawa_nginx || true

# Supprimer l'image existante, s'il existe
echo "Suppression de l'image existante..."
docker rmi -f mspr_kawa_nginx || true

# Construire l'image Docker
echo "Construction de l'image Docker..."
docker build -t mspr_kawa_nginx .

# Lancer le conteneur
echo "Lancement du conteneur..."
docker run --name mspr_kawa_nginx -d -p 8082:8082 mspr_kawa_nginx

echo "Déploiement terminé avec succès."
