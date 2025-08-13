ARG CORA_DOCKER_JAVA_VERSION
FROM cora-docker-java:${CORA_DOCKER_JAVA_VERSION}

WORKDIR /fitnesse

COPY alvincorafitnesse.jar        .
COPY plugins.properties  .
COPY password.txt        .
COPY FitNesseRoot        ./FitNesseRoot
COPY entrypoint.sh       .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]