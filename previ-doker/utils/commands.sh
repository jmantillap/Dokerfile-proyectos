#!/bin/bash
java -jar /opt/previsora/api_rest-GESTOR.jar 
java -jar /opt/previsora/api_rest-LOGS.jar 
java -jar /opt/previsora/api_rest-MAESTROS.jar 
java -jar /opt/previsora/api_rest-SEGURIDAD.jar 
java -jar /opt/previsora/api_rest-TOKEN_SERVICES.jar
exec bash

