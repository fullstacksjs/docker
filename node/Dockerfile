FROM node:14.17-slim

COPY ./install-package.sh /install-package.sh
RUN chmod +x /install-package.sh
RUN /install-package.sh vim openssl build-essential procps

ENV APP=/app
RUN mkdir -p $APP
WORKDIR $APP

RUN npm install npm@6 --global

COPY ./node/entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
