ARG CORA_DOCKER_JAVA_VERSION
FROM cora-docker-java:${CORA_DOCKER_JAVA_VERSION}

ENV tokenLogoutURL setWhenDockerStarts

COPY /alvincorafitnesse.jar /fitnesse/
COPY /FitNesseRoot /fitnesse/FitNesseRoot
COPY /plugins.properties /fitnesse/
COPY /password.txt /fitnesse/

WORKDIR /fitnesse

CMD java -classpath /fitnesse/alvincorafitnesse.jar  -DsystemUnderTestUrl="http://alvin:8080/alvin/" -DappTokenVerifierUrl="http://login:8080/login/" -DidpLoginUrl="http://idplogin:8080/idplogin/" -DgatekeeperServerUrl="http://gatekeeper:8080/gatekeeperserver/" -DtokenLogoutURL="${tokenLogoutURL}" fitnesseMain.FitNesseMain -p 8090 -a /fitnesse/password.txt