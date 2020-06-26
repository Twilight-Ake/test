FROM nginx
MAINTAINER jklolita "1484227811@qq.com"

COPY ./dist/ /usr/share/nginx/html/
RUN rm /etc/nginx/conf.d/*
COPY ./vhost.nginx.conf /etc/nginx/conf.d/jklolita-info.conf

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]
