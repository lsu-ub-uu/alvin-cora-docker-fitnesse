FROM  openjdk:11-jre-slim

COPY /alvincorafitnesse.jar /fitnesse/
COPY /FitNesseRoot /fitnesse/FitNesseRoot
COPY /plugins.properties /fitnesse/
COPY /password.txt /fitnesse/

WORKDIR /fitnesse

CMD java -classpath /fitnesse/alvincorafitnesse.jar  -DsystemUnderTestUrl="http://alvin:8080/alvin/" -DappTokenVerifierUrl="http://apptokenverifier:8080/apptokenverifier/" -DtokenLogoutURL="http://apptokenverifier" -DidpLoginUrl="http://idplogin:8080/idplogin/" -DgatekeeperServerUrl="http://gatekeeper:8080/gatekeeperserver/" fitnesseMain.FitNesseMain -p 8090 -a /fitnesse/password.txt

#java -jar fitnesse-standalone.jar -p 8090 -o -a password.txt

#build with:
#maven build

#start on build server with:
#docker run --net=cora-test -p 8190:8090 --name fitnesse-test --link therest-test:therest --link apptokenverifier-test:apptokenverifier -d fitnesse

#start on external with:
#docker run --network=cora -p 8290:8090 --name fitnesse --link therest:therest -d fitnesse

