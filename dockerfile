##########Install nginx and copy virtualhost.
FROM  nginx
RUN apt-get update -y
RUN apt install php -y
RUN apt install nano -y
COPY 1/html /usr/share/nginx/html

RUN service nginx restart
######Crear Carpeta asignar permisos all
RUN mkdir /wilmar-501
RUN chmod 777 /wilmar-501
RUN chmod -R 777 /usr/share/nginx/html/*
#######################################Copiando la imagen en mi directorio
COPY  img1.jpg /wilmar-501
########################################Copiando y ejecutando script + permisos

COPY main.sh /wilmar-501
RUN chmod 777 /wilmar-501/main.sh
RUN sh /wilmar-501/main.sh
#############################################################################
EXPOSE 80





