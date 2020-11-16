FROM nginx


WORKDIR /app

RUN rm -rf /usr/share/nginx/html/*

ADD app/* /usr/share/nginx/html/

COPY torese.dev /etc/nginx/nginx.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]