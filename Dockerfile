FROM nginx:alpine

# Shelf 앱 계약: 컨테이너가 포트 하나로 HTTP를 서빙한다.
ARG PORT=4023
ENV PORT=${PORT}

COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s/listen  *80;/listen ${PORT};/" /etc/nginx/conf.d/default.conf \
 && sed -i "s/listen  *\[::\]:80;/listen [::]:${PORT};/" /etc/nginx/conf.d/default.conf

EXPOSE 4023
