#!/bin/bash

# Create Networks
docker network create my_project_db_network
docker network create my_project_site_network

# Create Volume
docker volume create db_volume

# Build MySQL Image
docker build -t mysql:5.7 ./mysql

# Build App Image (based on Alpine)
docker build -t app ./app

# Build Nginx Image (if Dockerfile is needed)
docker build -t nginx ./nginx

# Run MySQL container (with healthcheck)
docker run -d \
  --name mysql_container \
  --network my_project_db_network \
  --network-alias mysql \
  -e MYSQL_ROOT_PASSWORD="0000" \
  -v db_volume:/var/lib/mysql \
  -v ./mysql/init.sql:/docker-entrypoint-initdb.d/init.sql \
  -p 3306:3306 \
  mysql:5.7

# Run App container (with connection to MySQL)
docker run -d \
  --name app_container \
  --network my_project_db_network \
  --network my_project_site_network \
  -e DB_HOST="mysql_container" \
  -e DB_USER="root" \
  -e DB_PASSWORD="0000" \
  -e DB_NAME="test_db" \
  -p 4743:4743 \
  app

# Run Nginx container (as reverse proxy)
docker run -d \
  --name nginx_container \
  --network my_project_site_network \
  -p 5423:824 \
  -v ./nginx/conf/nginx.conf:/etc/nginx/nginx.conf \
  nginx

# To stop and remove containers
# docker stop mysql_container app_container nginx_container
# docker rm mysql_container app_container nginx_container

# To remove networks and volume
# docker network rm my_project_db_network my_project_site_network
# docker volume rm db_volume
