FROM openjdk:8-jdk-alpine3.7
#expongo puerto de los servicios
EXPOSE 8080
EXPOSE 8091
EXPOSE 9091
EXPOSE 8888
EXPOSE 8674
#instalo dependencias necesarias
RUN apk add --no-cache bash
RUN apk update && apk add --no-cache supervisor
RUN apk update && apk add --no-cache nano
RUN apk update && apk add --no-cache curl
#copio archivo conf para levantar los servicios
COPY supervisord.conf /etc/supervisord.conf
#creo las carpetas necesarias
RUN mkdir -p /opt/previsora
RUN mkdir -p /opt/previsora/log
RUN mkdir -p /var/services
#copio rutas y archivos de configuracion properties y certificados
ADD var/services /var/services
#copio proyectos a desplegar
ADD api_rest-GESTOR.jar /opt/previsora
ADD api_rest-LOGS.jar /opt/previsora
ADD api_rest-MAESTROS.jar /opt/previsora
ADD api_rest-SEGURIDAD.jar /opt/previsora
ADD api_rest-TOKEN_SERVICES.jar /opt/previsora
#inicio servicio que sube los proyectos
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]


