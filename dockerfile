FROM nginx

RUN rm /etc/nginx/conf.d/default.conf

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY html/50x.html /etc/nginx/html/50x.html

EXPOSE 8082
