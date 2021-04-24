## Getting Started

These instructions will cover usage information and for the docker container

### Prerequisities


In order to run this container you'll need docker installed.

* [OS X](https://docs.docker.com/mac/started/)

## Building and running the application

#####Build:

`gradlew clean build`

#####Containerize:

`docker build --build-arg JAR_FILE=build/libs/\*.jar -t REST/rest-api-services .
`

#####Push:

`docker run -p 8080:8080 -t REST/rest-api-services
`
