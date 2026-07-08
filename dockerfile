FROM ubuntu
RUN apt update
RUN apt install openjdk-21-jdk -y
RUN apt install nginx -y
RUN apt install git -y 
EXPOSE 80
COPY index.html /var/www/html/index.html
CMD ["nginx", "-g", "daemon off;"]
