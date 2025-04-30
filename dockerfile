FROM nginx:stable-alpine
COPY ./app /usr/share/nginx/html
COPY ./app/style.css /usr/share/nginx/html/style.css
COPY ./app/index.html /usr/share/nginx/html/index.html
EXPOSE 80