#FROM gradle:7.0.0-jdk11 AS  TEMP_BUILD_IMAGE
#ENV APP_HOME=/Users/parindersingh/.jenkins/workspace/rest-api-services_master
#WORKDIR $APP_HOME
#COPY build.gradle settings.gradle $APP_HOME
#COPY gradle $APP_HOME/gradle
#COPY --chown=gradle:gradle . /home/gradle/src
#USER root
#RUN chown -R gradle /home/gradle/src
#RUN gradle clean build
#EXPOSE 10222
#CMD java - jar /build/libs/rest-api-services-0.0.1-SNAPSHOT.jar
#
##docker client. Install it as this in Dockerfile:
#RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
#  && tar xzvf docker-17.04.0-ce.tgz \
#  && mv docker/docker /usr/local/bin \
#  && rm -r docker docker-17.04.0-ce.tgz
#---------
FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=build/libs/*.jar
EXPOSE 10222
COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]
#-------------
#COPY /build/libs/rest-api-services-0.0.1-SNAPSHOT.jar rest-api-services-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","rest-api-services-0.0.1-SNAPSHOT.jar"]

#FROM mysql
#ENV MYSQL_DATABASE=rest_api_services_db
#ENV MYSQL_ROOT_PASSWORD=root
#ENV MYSQL_ROOT_USER=root
#ENV MYSQL_ROOT_HOST='%'
#EXPOSE 6033
#
#FROM gradle:7.0.0-jdk11 AS Build
#COPY --chown=gradle:gradle . /home/gradle/src
#WORKDIR /home/gradle/src
#RUN gradle build --no-daemon
#
#RUN mkdir -p /home/applications/rest-api-services
#COPY . /home/applications/rest-api-services

#RUN mkdir -p /home/applications
#COPY . /home/applications
#RUN docker run --name rest-api-services  --platform linux/amd64 -p 6033:3306 mysql:1.0
#RUN docker exec -it rest-api-services /bin/bash
#RUN mysql -uroot -proot rest_api_services_db </home/applications/src/main/java/com/parinder/restapiservice/sql/users.sql

#FROM gradle:7.0.0-jdk11 AS build
#COPY --chown=gradle:gradle . /home/gradle/src
#WORKDIR /home/gradle/src
#RUN gradle build --info
#
#RUN mkdir -p /home/applications/rest-api-services
#COPY . /home/applications/rest-api-services
