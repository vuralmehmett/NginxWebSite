FROM akkerman/rpi-nginx

MAINTAINER Mehmet Vural <mehmetvrl@hotmail.com>

RUN apt-get update


ADD [ "./site/", "/usr/share/nginx/html/" ]
ADD ["./default.conf", "/etc/nginx/conf.d"]

EXPOSE 80

ENTRYPOINT nginx -g 'daemon off;'

