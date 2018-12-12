FROM ubuntu:18.04 

LABEL MAINTAINER="anbalder"

RUN apt-get update

RUN apt-get install nginx -y

RUN echo '<marquee> Hello from arsys </marquee>' \
    > /var/www/html/index.html

EXPOSE 80

ENTRYPOINT ["nginx", "-g","daemon off;"]

CMD ["-h"]


