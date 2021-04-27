FROM gradle:7.0.0-jdk11 AS  TEMP_BUILD_IMAGE
ENV APP_HOME=/Users/parindersingh/.jenkins/workspace/rest-api-services_master
WORKDIR $APP_HOME
COPY build.gradle settings.gradle $APP_HOME
COPY gradle $APP_HOME/gradle
COPY --chown=gradle:gradle . /home/gradle/src
USER root
RUN chown -R gradle /home/gradle/src
RUN gradle clean build