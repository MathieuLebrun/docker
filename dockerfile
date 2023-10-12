# Utilisation d'une image de base avec Node.js préinstallé
FROM node:latest

# Répertoire de travail dans l'image
WORKDIR /app

# Copie des fichiers du projet dans le conteneur
COPY package.json package-lock.json ./

# Installation des dépendances
RUN npm install

# Copie du reste des fichiers du projet
COPY . .

# Exposition du port sur lequel l'application React écoute en mode développement (par exemple, 3000)
EXPOSE 3000

# Commande pour démarrer l'application en mode développement avec npm start
CMD ["npm", "start"]