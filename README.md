# Project Title: Web Application with Docker, Nginx, MySQL, and Flask

## Description
This is a simple web application that demonstrates a 3-container architecture using Docker. The application is based on the following components:
- **Flask**: The web application framework.
- **Nginx**: A reverse proxy server for forwarding requests to the Flask app.
- **MySQL**: A MySQL database that stores data and serves the web app.

The application includes two routes:
- `/health`: Returns a 200 OK status with a JSON response.
- `/data`: Fetches and displays test data from the MySQL database.

## Technologies Used
- **Docker**: For containerizing the application and services.
- **MySQL**: Database for storing and retrieving data.
- **Nginx**: Reverse proxy to route traffic to the Flask application.
- **Flask**: Python web framework for creating the web application.
- **Gunicorn**: WSGI server for serving Flask applications.

## Getting Started

### Prerequisites
Make sure you have the following installed:
- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/yourrepository.git](https://github.com/yassinekochat/Docker-Project-Groupe-2.git
2.Build and start the containers using Docker Compose:
docker-compose up --build -d
3. Access the application: Open your browser and go to http://localhost:5423. The application will be available at this port.
Available Endpoints
/health: Returns a JSON response indicating the health of the application.

/data: Fetches and displays test data from the MySQL database.

Stopping the Containers
To stop the containers, use the following command:
docker-compose down --volumes
This command stops and removes the containers and the volumes associated with the project.

Folder Structure
./
├── app/
│   ├── Dockerfile
│   ├── src/
│   └── requirements.txt
├── nginx/
│   ├── Dockerfile
│   └── conf/
│       └── nginx.conf
├── mysql/
│   └── Dockerfile
├── docker-compose.yml
└── README.md
Contributing
Feel free to fork the repository and submit pull requests. Contributions are always welcome!


### Explications des sections
1. **Description** : Décrit le but du projet et la technologie utilisée.
2. **Technologies utilisées** : Mentionne les outils et technologies utilisés dans le projet.
3. **Getting Started** :
   - **Prérequis** : Explique ce qui doit être installé avant de commencer.
   - **Setup** : Donne les instructions pour cloner, construire et démarrer les conteneurs Docker.
4. **Available Endpoints** : Liste des points d'entrée (API) disponibles dans l'application.
5. **Stopping the Containers** : Explique comment arrêter les conteneurs après utilisation.
6. **Folder Structure** : Donne un aperçu de la structure des dossiers du projet.
7. **Contributing** : Encourage les autres à contribuer au projet.
8. **License** : Indique la licence du projet (MIT dans cet exemple).







