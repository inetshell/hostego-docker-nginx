FROM nginx-modsecurity:1.13.12-alpine

MAINTAINER Manuel Carrillo "inetshell@gmail.com"

#cerbot-nginx-modsec:0.1

#ADD https://dl.eff.org/certbot-auto /defaults/certbot-auto

RUN apk update \
  && apk add certbot

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
#CMD ["sh"]