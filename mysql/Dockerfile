# Utiliser l'image officielle de MySQL
FROM mysql:5.7

# Ajouter un healthcheck
HEALTHCHECK --interval=30s --timeout=10s --retries=3 --start-period=10s \
  CMD mysqladmin ping --silent

# Configurer l'utilisateur root et le mot de passe
ENV MYSQL_ROOT_PASSWORD=0000
ENV MYSQL_DATABASE=test_db


# Exposer le port MySQL
EXPOSE 5655
