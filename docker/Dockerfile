ARG CORA_DOCKER_JAVA_VERSION
FROM cora-docker-java:${CORA_DOCKER_JAVA_VERSION}

ENV tokenLogoutURL setWhenDockerStarts

WORKDIR /fitnesse

COPY /alvincorafitnesse.jar /fitnesse/
COPY /FitNesseRoot /fitnesse/FitNesseRoot
COPY /plugins.properties /fitnesse/
COPY /password.txt /fitnesse/
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]