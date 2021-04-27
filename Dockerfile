#This command builds an image and tags it as springio/gs-spring-boot-docker.
#This Dockerfile is very simple, but it is all you need to run a Spring Boot app with no frills:
#just Java and a JAR file. The build creates a spring user and a spring group to run the application.
#It is then copied (by the COPY command) the project JAR file into the container as app.jar,
#which is run in the ENTRYPOINT. The array form of the Dockerfile ENTRYPOINT is used so that there is no shell wrapping the Java process.
#The Topical Guide on Docker goes into this topic in more detail.


# temp container to build using gradle
FROM gradle:6.8.3-jdk-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon


#FROM gradle:5.3.0-jdk-alpine AS TEMP_BUILD_IMAGE
#ENV APP_HOME=/Users/parindersingh/.jenkins/workspace/rest-api-services_master
#WORKDIR $APP_HOME
#COPY build.gradle settings.gradle $APP_HOME
#
#COPY gradle $APP_HOME/gradle
#COPY --chown=gradle:gradle . /home/gradle/src
#USER root
#RUN chown -R gradle /home/gradle/src
#
#RUN gradle build || return 0
#COPY . .
#RUN gradle clean build

# actual container
#FROM adoptopenjdk/openjdk11:ubi
#ARG JAR_FILE=build/libs/*.jar
#EXPOSE 10222
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]