## Getting Started

These instructions will cover usage information and for the docker container

### Prerequisities


In order to run this container you'll need docker installed.

* [OS X](https://docs.docker.com/mac/started/)

## Run Locally:

###Setup MySQL

#####Now we will create and run an image of the MySQL database. From our terminal, we will run the below command. Here, -d in this command indicates that the Docker command will run in detached mode.


`./gradlew clean build`


####MySQL image is pulled and running as a container. To check this, we can run docker image ls and docker container ls commands.


`docker run --platform linux/amd64 -d -p 6033:3306 --name=docker-mysql --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_PASSWORD=root" --env="MYSQL_DATABASE=rest_api_services_db" mysql`


####Now we have to import the database script to the Docker MySQL database. The SQL script is available /src/main/java/com/parinder/restapiservices. Run the following command to import this script to docker-mysql.


`docker exec -i docker-mysql mysql -uroot -proot rest_api_services_db <users.sql`


####This command will create a Docker image named book_manager_app to the Docker machine. Here, the -f  command indicates the Docker file name. Now we will run this image as a container.


`docker build -f Dockerfile -t rest_api_services_app .`


####The --link command will allow the book_manager_app container to use the port of MySQL container and -t  stands for--tty, which will allocate a pseudo-terminal.


`docker run -t --link docker-mysql:mysql -p 10222:10222 rest_api_services_app`

