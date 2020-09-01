FROM nginx:alpine

WORKDIR .

COPY css /usr/share/nginx/html/css
COPY img /usr/share/nginx/html/img
COPY js /usr/share/nginx/html/js
COPY index.html /usr/share/nginx/html/index.html

COPY /python/app.py /usr/share/nginx/html/app/app.py

CMD python3 app/app.py

