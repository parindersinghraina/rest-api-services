FROM gradle:7.0.0-jdk11 AS  TEMP_BUILD_IMAGE
ENV APP_HOME=/Users/parindersingh/.jenkins/workspace/rest-api-services_master
WORKDIR $APP_HOME
COPY build.gradle settings.gradle $APP_HOME
COPY gradle $APP_HOME/gradle
COPY --chown=gradle:gradle . /home/gradle/src
USER root
RUN chown -R gradle /home/gradle/src
RUN gradle clean build

EXPOSE 10222
ADD /build/libs/rest-api-services-0.0.1-SNAPSHOT.jar rest-api-services-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","rest-api-services-0.0.1-SNAPSHOT.jar"]