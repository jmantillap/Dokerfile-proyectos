FROM openjdk:8-jdk-alpine3.7
EXPOSE 8080
EXPOSE 8091
EXPOSE 9091
EXPOSE 8888
EXPOSE 8674

RUN apk add --no-cache bash
RUN apk update && apk add --no-cache supervisor
RUN apk update && apk add --no-cache nano
RUN apk update && apk add --no-cache curl


COPY supervisord.conf /etc/supervisord.conf

RUN mkdir -p /opt/previsora
RUN mkdir -p /opt/previsora/log
RUN mkdir -p /var/services

ADD var/services /var/services
ADD api_rest-GESTOR.jar /opt/previsora
ADD api_rest-LOGS.jar /opt/previsora
ADD api_rest-MAESTROS.jar /opt/previsora
ADD api_rest-SEGURIDAD.jar /opt/previsora
ADD api_rest-TOKEN_SERVICES.jar /opt/previsora

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]


