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
CMD java - jar /build/libs/rest-api-services-0.0.1-SNAPSHOT.jar


RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz