FROM debian:stable-slim

WORKDIR ./debian-web-shell

ADD . .

RUN apt update && apt install nodejs npm -y && npm install -g gritty

EXPOSE 1337

CMD ["gritty","--port 1337"]
