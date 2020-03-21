# Dockerized api ![GitHub](https://img.shields.io/github/license/EnsembleTn/api-docker.svg)

## To get started
```
git clone https://github.com/EnsembleTn/api html
docker-compose pull
docker-compose build --no-cache
docker-compose up --force-recreate
```

## API installation
First of all, access to the api container by executing:
```
docker exec -it ensembletn_app_1 bash
```
Then follow api installation guide.

## To access 
- Api docs: `http://ensembletn.localhost/api/v1/doc`
- phpmyadmin: `http://pma.ensembletn.localhost`
