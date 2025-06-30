#!/bin/bash
set -e

SYSTEM_UNDER_TEST_URL="${SYSTEM_UNDER_TEST_URL:-http://alvin:8080/alvin/}"
APPTOKEN_VERIFIER_URL="${APPTOKEN_VERIFIER_URL:-http://login:8080/login/}"
IDPLOGIN_URL="${IDPLOGIN_URL:-http://idplogin:8080/idplogin/}"
GATEKEEPER_SERVER_URL="${GATEKEEPER_SERVER_URL:-http://gatekeeper:8080/gatekeeperserver/}"

JAVA_CMD=(
  java
  -classpath /fitnesse/alvincorafitnesse.jar
  -DsystemUnderTestUrl="$SYSTEM_UNDER_TEST_URL"
  -DappTokenVerifierUrl="$APPTOKEN_VERIFIER_URL"
  -DidpLoginUrl="$IDPLOGIN_URL"
  -DgatekeeperServerUrl="$GATEKEEPER_SERVER_URL"
  fitnesseMain.FitNesseMain
  -p 8090
  -a /fitnesse/password.txt
)

echo "Running command: ${JAVA_CMD[@]}"
exec "${JAVA_CMD[@]}"