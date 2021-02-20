FROM node:15.9-slim

COPY ./install-package.sh /install-package.sh
RUN chmod +x /install-package.sh
RUN /install-package.sh vim openssl

ENV APP=/app
RUN mkdir -p $APP
WORKDIR $APP

RUN npm install npm@7 --global
RUN npm install lerna@3 --global
RUN npm cache clean --force

COPY ./lerna3/entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
