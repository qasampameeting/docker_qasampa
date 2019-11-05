# #docker QA Sampa Meeting - 02/11/2019

Repositório utilizado no  QA Sampa Meeting dia 02/11/2019

##  Ministradores
 - [Nelson Estevam](https://www.linkedin.com/in/nestevam/)
 - [Github - Nelson](https://github.com/warlinux)
 - [Nathalia Freire](https://www.linkedin.com/in/nathaliaofreire)
 - [Github - Nathalia](https://github.com/nathaliaifurita)

## CONTEÚDO
 - [Slides da apresentação](https://docs.google.com/presentation/d/1_iNHUnsIsuPSzO8hwjbpf8dhwsRCm_rGYpcXyYkzsGI/edit)
 - [Fotos do Workshop - 02/11/2019](https://photos.google.com/album/AF1QipMAua0GozJOjxgMJOuHuZob5FjV5EepChc9rJZf)

## INSTALAÇÃO
### DOCKER
 - [Windows](https://docs.google.com/document/d/1lbNI62P3a6-IjqAqExprpePPfZfWJ63lkICGjuB5gTQ/mobilebasic)
 - [Linux](https://docs.google.com/document/d/1asEW4CdI1W6mfuoBaBU4lArplZiWFx3kPIUaFeRA8Eg/edit)
 - [Mac](https://docs.google.com/document/d/17pA3Aog_-OaqeReW7FP0kB-3wg05NuE-HINLg5hVWH4/edit)

### Dockercompose
 - [Windows/Linux/Mac](https://docs.docker.com/compose/install/ )

## Execução do projeto
 `docker-compose up -d && docker-compose logs -f`


### BAIXAR O PROJETO NO GITHUB

Se não tiver o projeto na máquina, navegue até a pasta que deseja criar:
- `git clone https://github.com/warlinux/docker_qasampa.git`

Se já tiver o projeto na máquina, navegue até a pasta do projeto:
- `git pull origin master`

Comandos docker úteis usados durante o workshop:
 - `docker-compose up -d`
 - `docker-compose down`
 - `docker ps`
 - `docker kill [imagem]`
 - `docker-compose up -d && docker-compose logs -f`
 - `docker images`
 - `docker rmi 66eec732ac0d`
 - ```docker rm `docker ps -a -q` ```
 - `docker run -it debian:testing-slim /bin/bash`

[Play with docker (Treinando sem instalar nada)](https://labs.play-with-docker.com/)
